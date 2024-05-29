Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F9F632
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716945863; cv=none; b=CyFSBLhg/4J/mq+xKeL+ML+DyWtHsxXYP7K2vsDX5Kt6ernfuvc8RkUFYY9vePg4IHcO1gXrsJSeGvdZtb3p4dq90iFWUpKO1FvCdhf5xF13N74rvPDm/+3qcWf8e06gzAZ9cIlCPFzxhs6kF9T32OTJzi3Lxr1ZstY/NOlHHX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716945863; c=relaxed/simple;
	bh=mASC5EmSuha0R97jVW+zg0CYBadVLVgJ/OecDvdNeJw=;
	h=To:Subject:From:Message-Id:Date; b=H/eLXLrWyFyqa4t/WdpTdy9+EkPwViOO354te73aW+x5p4HVaByp66cg/IeS1SP2EbP0ZVMcbbQ9GBOXEkVRuZQq8Z5SNp5hik8k6uXetfRWFQ6TbYZrQE8JQsejmfY3lux2LdnzjeKBnsMosnuwdCaNYYMRUjeP5M+yb32rgw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi/rqz15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi/rqz15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1452C3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716945862;
	bh=mASC5EmSuha0R97jVW+zg0CYBadVLVgJ/OecDvdNeJw=;
	h=To:Subject:From:Date:From;
	b=oi/rqz15Y1MwFczTXwxgVoNsSWXbiTTjjTzbt6dK9RBDj4QoH+sfvwBpVriRyzS9+
	 b590u/Tjqi0hcziXiqeId6MrmpzagA0jGBQ7hlg1hDe8+0unmiRiYAfEU2yVm+m0oS
	 Py2zWVbH16AAJ+pKTx8v/CqboFJ8WVwPvpTRTejeFTe4KJoJs98/hUZ0mO/EFQWBSQ
	 nxXnnNKs4pHLUw1VzKu4FCMRQkMyft745L9PmSDdWdkauduXg/rtDRMWdrzcwjuJP/
	 j4Kik7pVQLWbYq18X97t9fXvOEF5/0P5SgS8tWbaMkVyWWh7KioHZy+R/WUj+YMhau
	 3z6ZLFN+ZlzIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE28DC25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694586277.32091.1991466761190382731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afad3bb7de2c4975d5c5b5424cd0b457986e23a8a03f8ec1252763392452a21
Date: Wed, 29 May 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716945862
