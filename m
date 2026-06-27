Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457AB40D560
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782525514; cv=none; b=cLhHyJ4VT17USIHrILC1qyCpUubf9gN07GTPs99UfRkcPGUqVxSqNkklOOlsKeJeVJsfK8uItxtI4ULqsx2nANCw/Uf0hikzXc6eZ3Ze/gIy1eqG33wO218S5szK8uqznbqybV96AwbUuUGbR/msz8mAWQye6cqMQrT+0hKAO2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782525514; c=relaxed/simple;
	bh=CWc2cge9MLpU4gC6Ikjjs7YhKWxQB3RUEGmHGw5xcCY=;
	h=To:Subject:From:Message-Id:Date; b=V5qVnC7+78ZTwcFGE7w35hmE6lQXjk3/6E/HCwYfR8XoaLdySWSbAHNTsjSTBWtc9oxd7N/vsXvy5BimdOG7FKIDSH6szL+3Gn+suk1Cupo/uCXu8dMvVSd7Qt3J9bWICMgJy0yuuQ0qFsDCE0+i/stwRIWR5C1K+LsA7oYlNF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1H2+8M9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1H2+8M9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09DBC19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782525513;
	bh=CWc2cge9MLpU4gC6Ikjjs7YhKWxQB3RUEGmHGw5xcCY=;
	h=To:Subject:From:Date:From;
	b=E1H2+8M9ySkoiy8dZus6A4GvC1pMcF7Db8xf9oZ8Q7lkq6zoCQM/H7UzZ4h+OivXl
	 39tff7jYoaz7Qe2n0GraQw0n6TkbktCFn7UDmuSwPsIGdlHUiF4x8QOaljdqThvweX
	 PVFj3Y3/hgKyKZ4EIxlfSLoabW7NzRbOdCievSbcxip3fbWqDBOAuis202EOetidrz
	 ccNlAn3yyR4k8wjY6GBHYcYJR+l3QdVy6oX0DJC8eoXdH6pVNexiZzjd9zlnsGeAR/
	 hkv40sUpj4G1hoelfEOu2NstpCxJ68AWMAZVKd5IM2/JCBuHEQ80mqEi7/0jXGWhq5
	 c9707DOrTEIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF048C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252551370.23334.1711016205462170218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19bbc9fa8e99d4951636de6eb81618c8b34f86b4df61dddbca05a4cf126a3c9
Date: Sat, 27 Jun 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782525513
