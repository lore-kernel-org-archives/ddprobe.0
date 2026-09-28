Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495C133ADAE
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790558434; cv=none; b=LgDtdJvUSc2x6b/RkJan76hH5O+vj5KWy45ZnNPSMAZP6EeGY7OhLW2/XSfytG8scQGa1sjH2k1vx7fI7k/Zhzuyq4zCwKJL2QZcEnZQQac0dyOHLcV30UmhtIytoIeZaO5k8Deqxr0pp9rBY9mfMTLn5SIMMLf/2by5Yjns2vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790558434; c=relaxed/simple;
	bh=z0JK6duh5mRVE9t5PGavPaoyGfLohuR1/2USMsJaqCw=;
	h=To:Subject:From:Message-Id:Date; b=uVNIhlIcwTJfIXYIgm9II6u35v3ulUSyD3YtsDPNmYAir34DBu4H9/7kIsyumBfbu35e2LX08DhBcd9IlPN/EthRy68hfjsB3DxVGBgJ8AnxHSWAW5m8h/p/ByJBi3GG5voAZSuI2EWmAFrCM61B1CvYXod97DJ/jni6yvXXBWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7tkRFfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7tkRFfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6577C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790558433;
	bh=z0JK6duh5mRVE9t5PGavPaoyGfLohuR1/2USMsJaqCw=;
	h=To:Subject:From:Date:From;
	b=T7tkRFflQxfcXZGZvnvjfU4m8hrxjWSTh+OM4NfkqiFvrjGoFv3/AfAnN+Gz0Emjt
	 qL7M8Uu8uBWoxf0YHUt/zamzuxabAIJarwklLlS8m/K2M4kTfk1Tm+xERX1C946PqZ
	 Reqyub6H7MNNBftaDVBQsZC9i0SOAY/5pT9xZOS/NDs6sRFIyFG+yg8peZC/XThlhC
	 3HR6mrYQK0ohsEqUdLvduFwyZygYnzKw5y01NR34ByjYmoA5Ub3lZ7MkWF85Y1Goyz
	 ikdnDC3uQuVyCcyxu0gEGzK09onxg+wHehNNA58CFNuJjVDBhQANEVaVlvfp5LNC6i
	 MQo2R4PcKegVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A29C9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055843371.6974.16735734486122582455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f6de5d39b2b42be4ba92245a20d187c9472d8195b062aa5d5223b219d0a88a
Date: Mon, 28 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790558433
