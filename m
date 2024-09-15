Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323AA1EEF9
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726434354; cv=none; b=YRBTbZA64xlp+1Zw0bzl5bbTs5i8HH+h4bUes+sUI2qsztIGbbaVKwlOeRDhBu4X4Uwc44kU1KgySck5eUbCpL95KdQambHTrIwMEhjACPBbQT6BKHSib4Z6TO8ytheDU7X7VXs5kIa9Xd6vWRp/nMse35sATTrYzWrE2ykWtK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726434354; c=relaxed/simple;
	bh=fwkuN1r2n0YhSCjaynl/EvLeabuqtX7ZWFr8SL0NGME=;
	h=To:Subject:From:Message-Id:Date; b=EcPYm2wol3eNOqv9s2a/sRg80kzOhIrbodXKvdY8OG5dxWuHKXLqXeKbmez7DXR9d9m/X7MxTvALNw+R4f5VjqK2OduKgkd5M5etvnmgSLomHikjYGoZBh3Gwu9O9haJRBSWtCN/F2CHMXFFye8bdjNzGwp1inrGvlsuSUh99WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFBIznWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFBIznWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3951C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726434353;
	bh=fwkuN1r2n0YhSCjaynl/EvLeabuqtX7ZWFr8SL0NGME=;
	h=To:Subject:From:Date:From;
	b=rFBIznWDHxV4u4fx1sNaPmWqBpgrl5RuU8EkU/foeMJGhpTdEDSXiuKM6r2TC+qkZ
	 UFWfFZ1Ze06SVqRm36ROxKpzcjAW+4XUzachYoKax54Hy28ZEu5DFyi+nGQ0jE+gh9
	 KvXScEHsx4E0AG/4wSM8CtIjSuXxnhG9ZuF1D5LxHAxOCG39jFWSru4HvQLUa3kKd/
	 oyjfBjuMMae7jzRDJZ4yP8DE/qWSujSo/JK1TzMiSsPuD0G9Xg331xxFsAWiuzXagA
	 6dQYDNw+x89KQ7LWDzUXSlCoAQFMyZTZJE3+HjdwI6vyw0ZjsSqpA3oyg8hxpLjXef
	 0XXAhzjMpnGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01D9C3ABAB
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172643435360.26061.16623396400976180334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb13b5975650f723921a19ed79c0dae2af36500f9ee8e1faceec78a07b1caa01
Date: Sun, 15 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726434353
