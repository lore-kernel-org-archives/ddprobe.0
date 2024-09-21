Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349B58BEC
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726961754; cv=none; b=aEjaPFvx3XHvg0ZXjkvgVGcWL8zzsFCkXW88B6luIt/7LTFjkt7NOvuNF9k3O/OyUGGOG6B9kgnQOcaF7aD97NSORsV8wfh8mtsG2NnrbPNS73PuIDxYy2WPqFBDm5upK/OJa5gqNdPM7pXMmeJeyiGXTE/9SHCw/7H+ivTqeNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726961754; c=relaxed/simple;
	bh=ksZsVLewO/BOxGQOW89zp4rGr1CKvMubjAqwIcdGU60=;
	h=To:Subject:From:Message-Id:Date; b=eU9igzvcT8oyA0tVE4JiXIuaSx0cmFaUuo5H8+W5160Pgr8Ren3ipzoQd8WMz/32Kp1npFcM2trLl17boBn8xq/aPNlP5d5mn5Z+DGQ9iyu5QFHKuGH6v1HBh3V0G4yjBSVukvca6kcOtsKaOiYi2oTVD1wT5S/CBuXKwG/27/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze5BC4r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze5BC4r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB788C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726961753;
	bh=ksZsVLewO/BOxGQOW89zp4rGr1CKvMubjAqwIcdGU60=;
	h=To:Subject:From:Date:From;
	b=Ze5BC4r/ZooBoh0Pt4Xf3x7ommiEFzh+h2o5YDr9TkcBMYNjPkDMmw3SAPatGFmqS
	 q+BxQMC+itniQSEnc7XAHE2Shhq0D4Wwi0BP84i252Bp/8CKiV2q2IHD6I8ryy6h08
	 VItx/9163ZmhsRR5QoASNxqB8uULez/G3SBeeu6wLjzmpLMuPfJnd8+ev8BGDcv1eb
	 Yl7inRtqdRebOXzIACkp474Xf4eKNzmJmor5oizRVtZyOmEiKGfa5Ou5Jq89RhYlu7
	 5No7PmCvh+SzkcEFStnXaxnKvs1TZAuEYsVZKA/oxm87vfAywfOmUbiV6snuXThuVP
	 MVml1fFJy5J/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468ACF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696175357.9410.6304615713295101061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b321e7e12212e04423726f277a4207b8b683a8e0dafb026aaa7cc4a9a678645b
Date: Sat, 21 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726961753
