Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5F243C7BA
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783448314; cv=none; b=OyMuADXNGpt5C2qJAsS1qXQo4awQFoPMTTGj/FhFIdF6RmmgbY0rjPnBEp0YA6BxEpcgGNdFwWx8IgyKj/Qzg/zXRBikrIG3OAP7qAPCxOR5dG4PTIukZ++RisvPS5HM++JbWFpM/fQcFjuRqEQf9ITolksVTM1qedN+C/JHwAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783448314; c=relaxed/simple;
	bh=+ud7gcfZGqTBj3TpHoBv1qYZ/blagopvv+Rhr6xMDBE=;
	h=To:Subject:From:Message-Id:Date; b=WH7WwewGR6chbh6Fe70CnWMbFVM8y/Y25uclZSe64WUQgaaGn7LgfHB2QDNWArBLm3nIV4ukGpwUBtkV5HxupDQ9FsWgkvjIv4m9PltrFFAMhO/dAg4ObBSQ+L1JrMdh76sTkLjvZoIBbu28c14afBJtFtmLVixLdbyzz2HhBO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0wUKfjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0wUKfjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16F0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783448313;
	bh=+ud7gcfZGqTBj3TpHoBv1qYZ/blagopvv+Rhr6xMDBE=;
	h=To:Subject:From:Date:From;
	b=C0wUKfjf+rJKEjMjcEHDYVtXieWTio9EP9g2nmHBPhku90VagoB0lZtS39LoXBRwy
	 oLXCfjx262KKcDjZICaZTS4UC17xda62lTAjBL95XB4qzJnM7gGdKb3GeiCG0r4Zr8
	 WabyP8sI5SQC6jMsPzRyHUtIiWu10ewVHMKlno2DbuvIMNG+F0p/pJsUcew0ro/tKo
	 OdLk6S1x0QYFqXf+VvbTLTvaaFx1lkKq7ugq9LmNWRLgyEEVGxjBRdXNpxFGw84WQM
	 98/tdX1xxZd+WrFr4h5PUp+q+VDJyouV6OoEkaE7l7qvPkuAqlRCunHoBm9lR5IM0P
	 CGYAowkr+96kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA367C43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344831368.12800.11671008569567425657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488b363b9f34e06301373eb4ef8d455a0411ad99d9638aac8c282f4e0a75bc12
Date: Tue, 07 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783448313
