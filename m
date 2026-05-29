Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F986344D99
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780045354; cv=none; b=HTtWu5B259/itT8tk0hkFWDZ6zmjRKKBjuXD8+TiYMZuP+kAYGDw8FnAa+RJCtrQuaSnBdaFiw3de+TiMBBWnNEn78om3OzXn/j1a7TDwEudLu1fAPSrPcztNB3jYCH3zkl+Mty0tbLT7BaxZ2n4QEafy/iI+skpUR4pT+FArfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780045354; c=relaxed/simple;
	bh=1gBLZ1tOGY30TKpfkoCFu78Sq07o36zFOn/qs2oxlBs=;
	h=To:Subject:From:Message-Id:Date; b=Epmaf+9W5qhY2jlnaw8X3o1ghWjFpcwOHqSXLYq3DOsxnZIA9NCUVhQpweHAaHa7buKwjhj8S8QaBtDxNo/qdezYPQwlSTKGbl5uFRmttpattp/rUhWEqvEYH14z88G4WiZFDBiJveXXn/DhxFz21piBmU2I6h78DJXXzYd9iN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efIxwmeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efIxwmeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE27DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780045353;
	bh=1gBLZ1tOGY30TKpfkoCFu78Sq07o36zFOn/qs2oxlBs=;
	h=To:Subject:From:Date:From;
	b=efIxwmeD4eaz3GDA+xdTKcFw7lBPQ3TrNHY2rpPT9Ypq1ga/JnX4Tf8QQ/4tD+HD9
	 xuRT8yiJOoQyq2u457f+7JherYCE/chsXnV9SZgGkwtfEQtwjY8ZfFP/9dcPjh5Sps
	 ttm57P614fFz6CS9C/Qtw5r4FQ1hYnGrv8bCshsv9f3zrReH1VCMIqr2bTBImpMeH2
	 gpaXkmvItnMwowIGPyOP66yqQUhr7Tj8rBPJBx0Q6ME3d98n9jBkRo277WpwxeFnDO
	 KleDRIW+f//blhW+aQ8+6BqO7SpGi8JlAG4YWnR9r1jfrZpMN3KoT/guhQdW0cTjAs
	 OY66Nl2oyyb2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAF4CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 09:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004535368.4172.4297926591155053509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49dfa3c57ed75ea11ffe62bac92bb809cd7b6acca874c770163fa7a30124146
Date: Fri, 29 May 2026 09:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780045353
