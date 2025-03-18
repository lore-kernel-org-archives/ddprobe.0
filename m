Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D17D20764C
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742294394; cv=none; b=UVzNldD0masVNkiUvM1TTxVYfY0Dbg6FsE5l+AgrNroOL/owVX6W7KfAo+sOFSi5OjjNx+YCMDAonmW0/QTIa1kxCWT1vziWlUknvam/UuOCe+IRbfV7PzJ9UW+rnq0dxKcxJ0yjq3oKPncNoDt4NbSNtqbkxmnMiwQa5wGIFjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742294394; c=relaxed/simple;
	bh=zKL7KZTyThu7a1MnQDIQUOuUQnWw8UXtBjYx7wOCTJY=;
	h=To:Subject:From:Message-Id:Date; b=EJuzrFp1JrwFHAAYTQow7WiQHG5g2pscbPcUGNJByoFGaOpe0XvIfEEP2mjHlgAHNgbe/VxR2QP4dLpkzGhjqz75tX6jQtufUgPEs6h9620NLGdZPRy5aVdkiWdx2+cOKojkwlkWspdI850Jd2o78rVm8OJ9H8ZZW5fDckkPYn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j76GXNes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j76GXNes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8376C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742294393;
	bh=zKL7KZTyThu7a1MnQDIQUOuUQnWw8UXtBjYx7wOCTJY=;
	h=To:Subject:From:Date:From;
	b=j76GXNes0EI3RHxXNVhK0H6gbpoy4ggzuCl9efKrhNgQkaT6fcqC3iCOA2xXFZfMv
	 YG4hTnSxPoSR7HOB6gVzLSm1sI+YVrAtTmYMz0bniGvSwvVJIKKDbx/99YoMVCiyGz
	 JaordOlhbB3FX0nwSgkZZrdDIY4CJFmwMAG9qy0bXh/QJLoCKhBVQn9E8lh4tCX6kz
	 aRu6jliDLi8MDgESY/b8WDGJ8FUZsVT9M6lFArSR4dUZ/ZQv72HJiJdkCY8GG2KJj6
	 Ni08lYO3LWX9DUaNRqQL7TO9zkOPo2Dgqwv5dB4F5g4cCfNQ9F+bE1/SEgrxkIzGKR
	 EmPr31cn0FLcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7614C35FF8
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229439367.24020.11833669048879277410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a1e0b1e74d2abc11d20178c94d130df9e3222ebf2c6809593c57973780767e
Date: Tue, 18 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742294393
