Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247168172A
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724663754; cv=none; b=suCY+jcxRm1AEZIDXW0Mv8Pwtr7wjh6XscocM9pe087vTmEphMKP4tT/FReSLWOVAdx1vfsOzZvi3FYTl8cg3VxB47X0X7Ckta45J6Hyp3iFfKc/ufEh8+wBFzzP5quAqBRJ4PQS3uIpdvlJANTegmXwQI5xrZxr8wJMplflxzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724663754; c=relaxed/simple;
	bh=DyWUqlEv5s3ihE8u2+7qcvyeh+AP06eEItD0+56uhq8=;
	h=To:Subject:From:Message-Id:Date; b=MvIYtDLKndzwQaUJ/ZdQrmyn6u8mvP7wvLBAi+a/HGIFYYiCuut7okrvP/+JmUhc8HZOeUBiDSeYPaNXm+4YCoT2tdmKO6QMzn4JLVIALhnaA4Hlxn6Lhoqu3Ws8hZZviu9IqgpQQJ9srV62LOOQ0cJR4eQ3YivdRsFiIKzcnic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVj1jJUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVj1jJUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CDC4FE82
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724663753;
	bh=DyWUqlEv5s3ihE8u2+7qcvyeh+AP06eEItD0+56uhq8=;
	h=To:Subject:From:Date:From;
	b=sVj1jJUeInA3Os1pvLgQUpSNy4PwQMCjNl8b56z9lWnK2jegSSQKwPWhLkOePSkjh
	 Bh5tR5e2UJ4oYdFlS6wiQiC4Kc/wFg+ABpdSAkP3L7Xaepxz//x5fjXX5boqC9Ur3o
	 kwPAtUQIB0Ty20CxJ+jX1iEMBuCC3jmEb8XJHReCQEx6COl4C3XlPiYrPZPmxCoQ19
	 sbXSDFhiuhSbPbc55ByazSffvlfw/H0k55BS+NaD9iBCzeeL/d4eWXIBonFMUJcaXp
	 yYfa0srZYnCd9XuT3Kfls/y8hJtO/gBv+9yLPTsWJyooUUf2MKrGzTIGyc3bngAy7x
	 bvd6eWDhfRphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBDC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172466375359.4630.7448906342198311369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c408500db27874194b3918979f7a89b617de954938b56264319f064b5c0c6cf
Date: Mon, 26 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724663753
