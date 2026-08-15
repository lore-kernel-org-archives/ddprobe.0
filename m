Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1A91A8F84
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786837834; cv=none; b=mAG1F9WAS/jM1PLnH/udQmelnoi6wjlHgkxci2pBOIWgVKozvoXCBDweR8aJ73yxtPDu+Gk31BIvInwC4uSG5yeTcetwPVPDQ3nXbjg71u/pDMrsstOWh+F85DecI9IZF191I996HaPGn78DHzNPla5/81WOhgePzPcr4E3y7YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786837834; c=relaxed/simple;
	bh=Eizdns4owqfCBGwPaaM90YJjg+UrG+dgJ8lOLGrDBgg=;
	h=To:Subject:From:Message-Id:Date; b=NSgQJ6oNjtSWWHlMGWizjX/uBFXJyH/CDVCo4KW0HwsTgauK/Zv8A+CmdgfZ6zusE/+BZc7wHNxF47yhM6XxHCklUmCcr/BthELBJpxc1AQ5pZz1sEWmhkDSs2fsvg5gKWS5OApwboNivnBq3Wj/jf3I9EQTrGu8VkKMSeInH/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P53ZS94G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P53ZS94G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D481CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786837833;
	bh=Eizdns4owqfCBGwPaaM90YJjg+UrG+dgJ8lOLGrDBgg=;
	h=To:Subject:From:Date:From;
	b=P53ZS94Gt7H4vexPS3FQIauiClbD9P8asoOiGQJ1Eo//lj+hxpmld/OMi7WtWPg1J
	 8WaWyp9dyR0P7QssYf8apnfEMl1vV83ENcf+MU7bKf3ND50WkTBcNKFSZcHpNBMDKu
	 QA/bDAsVxxW94xY54QILpsW9gdQuM6DV/9u7ht3Px+ihTej7u8ZtjenhVI+MrPNtk8
	 LeT9k1IQjbXgCfNF4ej+wAfqbiXgjq56BGisUMxoFa08+YkBCxPDGtgfol3KJfpLA0
	 iFWIYJQ2Hoe55cXfKVexgClNzV8EfOcH6ll5w3fObBo5DrcNzVmxjTfOSN+LZfnhSs
	 A1OjCO7Nogcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1304C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683783369.1701.5288493842048146947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73aabef1a29c1ee68807577942a1aec97b3634902fd08aac0f626d587ad465b
Date: Sat, 15 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786837833
