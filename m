Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7366E12B93
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719284603; cv=none; b=Jffr15vAUN3TjRfHeELA2Jhl0ZW34H2yDWTuzfTaRmon+JyLyMEVslPxZYMNDgVqoQg32I6aorvkgBKhBppwRy/kN1bm7FFL8qc6Csu8YgHuSLmPsepxayouk4hhJhr6J9T1UMB1WwllKhL0rEyCDfzmFWCdIwL3eJUEDjh0eFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719284603; c=relaxed/simple;
	bh=vV9F2WEeJeCg+hdrttLqqnHjDNb49e6LbvURnLM32OY=;
	h=To:Subject:From:Message-Id:Date; b=bbqKNF+EQ6fjfu7/4dqdrYUiSFY1MboRk7LifI8M/7kfiBwiKO3GgephFflBedFfUZOd2o6GXXZ3qbFnULf3EhEYmddsBfNUF+kxxddlWy02NvXtSYPOYVxqoKyVuGpE7AT7w5Gpsgz/rX/0xtNJ9Wo8m6Hp5e93sxvMkX0rBRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGl+LoD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGl+LoD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B90C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719284602;
	bh=vV9F2WEeJeCg+hdrttLqqnHjDNb49e6LbvURnLM32OY=;
	h=To:Subject:From:Date:From;
	b=NGl+LoD/PJT+a4aJQ3+SR8/nU6aHLs3H1scX0lK24u8AQ5h7o4/frduAhJGfNpRwC
	 rCNRmTHUHsMn/YNhvWX+EH8cYqY+0piYslYoeFLCuoio5Ki/ybKHxpJK5S71gTfcIM
	 MdD/CZNMjq59QpMDJG1TVcJukNxVF/svb3ZUvHJ+i8OhzqvNNN6wbmh9q7hM9yN5/7
	 zhwZSyD/+Px3cUBshIXcLcRhJB0RMSzE5aFW0mTkB5kvlZkM7W9ANd9jLePnrsd8ct
	 +vQKQC9P+LofNSMFs6k8BxCMCEEGqNoP8MSJz5iuXprpKyN9DvgvMtOwu80EFnbbfg
	 wCnmGjt23RbBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D22B8C2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928460285.32643.12085976118754401608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d75b237f841ad17c55c79df156e542ba6b652295c3bbf84e582661c4752e3a9
Date: Tue, 25 Jun 2024 03:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719284602
