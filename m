Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6041222F388
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785307834; cv=none; b=Fqit+avioDU/RiK7lTTSVlwxjeN+VK6Ho/AaYO37VoHYquhb4L0BOpxvGxZiTFHU9sI/P8jjwSHzajGPROkNjcrKios+1sKULqpY2i3e/IZRPdhSsWU1tBlWCXeHbq0huuRvGc8merf+nhypKXtPqceuNJXadtFbnIyCH8lcxrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785307834; c=relaxed/simple;
	bh=VanKqeERrf98m7VMiunWCyVJpAbdnhS5zozNH5O24go=;
	h=To:Subject:From:Message-Id:Date; b=Fil9FSuJ+eKb5MUFjEo0xAHWnLDRfRFbGZYj8no2YZm5PL3P0AsOAqSW9gJ5oVd9xG/hh0v2FIm//LWWHKw4IWSScsX/dgyGXVAcYGJp3qD2XZdKnALuN3fGQhiqjh+VehEknkscPSl2QNHCLJ98AUyAZ+5q9R75vKEk3pQe4g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnxHTYTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnxHTYTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD47AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785307833;
	bh=VanKqeERrf98m7VMiunWCyVJpAbdnhS5zozNH5O24go=;
	h=To:Subject:From:Date:From;
	b=EnxHTYTnf0JMSjWlbpVPk8WU1ZeD7wDLFuExDvq2BDXDKIn1x3umXK+sRsaXjQYfW
	 0dR90X/XQcAOUj4QlKXa/WP7PMjyBBlL08wCggegUAadnghWjks0OUAfBs4XQ4Ar3p
	 FAlN6jcxBi66N/K/9CBi2C4uBhTi7nqiMRvMRc9jhHuaedCklgO7w7qrQVsASTbqeA
	 qUYF9OErMmIC1/DY6mH8ubwZD0VhsRbsVYHBx/Z1PA4R47u4T95KsX1jvq8cV2J1tS
	 BtoJo1KTc9l2oDVrwBQGyJZkP2wUZNMpLtrqYZJ0nn6QsZ8cjE2ay7iDynKk5HuOGA
	 4Ch5BCVxrToFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A898CC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530783368.25851.13198061109255857763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f313d77d087c98670fc485612d79f25817b0bf7d08ff5482f59f671f8873edb
Date: Wed, 29 Jul 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785307833
