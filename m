Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F6B3EA9E
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708780097; cv=none; b=R0Gn+D4RDv8WVN0EtXJkzQovzowaC/WfzTRflfVAzfK/eTWq1lHErJCxlunS/NOP/iyLgHRyu2Uu3ha8He5YsViNJMA9CYN9nyCkWEBbiU2x5y3sWBmGWpHpFL3TVqe3wx1Wc0rqxW4H9V1N3BfQ9cqoMy7N/hHW3qznwTmbQow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708780097; c=relaxed/simple;
	bh=sgV70hT6sLklUX/DL16KAhLJdlajLzKAvvJcHUDkwR0=;
	h=To:Subject:From:Message-Id:Date; b=qmfoseWswlcU63J7jw6olXl7ZKNZeBfM60gpwB7GvSAGGz2ZV6824Xr6b1YV26QLn1RRyYI88pwJX9uyftvSgaaxu8e+68N1eORCyGJuy2Ok7IjUApkyQk2kC1A96UmxnHBQKbUaQ7S3vvnKGCVM33yJEz4PdfuVnc6dwS+lm4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOK39PH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOK39PH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80631C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708780096;
	bh=sgV70hT6sLklUX/DL16KAhLJdlajLzKAvvJcHUDkwR0=;
	h=To:Subject:From:Date:From;
	b=oOK39PH/KhAkemGfO82UaX/7c5wTsYkjfi0X9U2olFi26gnr09d7UFx6Ip66dhzkS
	 JQNy0Y7YjeRO9BddHjlfc61p5YA1Rrvc/SD6C0by55cHrHMFaQvjhjv9E8srV7QdGH
	 ZibGDkxdJMjB/JBszGLS+crjPZknEz00rrFLpm01l7TlFiThKFljxMkzUTNPZV8gLf
	 lCXI6yax6chBnEYYQv+TezukjMRut42LuYocXUripgQ5ZXFqbGxgHTI/y6Mu7Bd3K2
	 YT6pITPO2B+g8dN3v4eUF0dw2gXlv0gq62DeSXJUqrqH9PLfMRI6JDFJFxZZZqcKps
	 zLRwu13VkSY2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63327C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878009638.8420.17361273526332389659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 900c452742e6b2293eeae6a1d8ad0111b95c18474b3bfa93e5622e5044775712
Date: Sat, 24 Feb 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708780096
