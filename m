Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4723F31A549
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772634894; cv=none; b=ZWAhy5y8UPwqZ+bAOn48rJZkxdsXK/sKqe2QNaWS8lPEaQZc5tnq74OuzSROhkur2qDV25sT1a0wTN93sJUWvlUZbAft2lkZH3OU4YXYsjbfXq8+9nB5f3qTxQ1Qu9qOV8uM0yiDmK4vn62RmNuz+BvZeDb6mCbksNmbucpeBxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772634894; c=relaxed/simple;
	bh=jZPh3GkHnql0ks/1nnKYTkrqucdHmchIYYYBJtoZ4Ns=;
	h=To:Subject:From:Message-Id:Date; b=SYXt+irzLxYo7KRpy+cogIpBX22ArSEEwd6tY46h0fpONrzgUDe6QHE5TE5dfu4GWbVSXs5zpnaoclemmG9DkkBTrMp7D9HjvxnfcJU4tXBgy6t1TZuX5ehwlhfg+jL6uY7MQGMzJMfxmR5HT0hTjlbZklAPyOARx+hkH7yamBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCGyDYta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCGyDYta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5C1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772634893;
	bh=jZPh3GkHnql0ks/1nnKYTkrqucdHmchIYYYBJtoZ4Ns=;
	h=To:Subject:From:Date:From;
	b=tCGyDYtaXsLSFlUG94Hv4rK56Y+xayTTwU1E/7agSlMtmcWOLTHowvdMZ5xPeaQPF
	 DIPSK2W0H29FbmM8GuNhO/htuYW8shp8YS3vmRn7yVAq/Lrm7e27brb03R2i1SHv9z
	 h4qhwC7GednNC13hTbikaEBvWi5gTmAjskPUQSP6+bGOyOLt43O/PBGuqHGGVtT6+2
	 BESDSS0ttQUERRxF883DSg3oyU/Al+2j88toHx3i2+sOCxg8OZeZQPXQ7j3SG8aCBm
	 XzvFAGu4HJdPcmEHL/ZX7F72ajf1Lhg+9AKk7c1wGbH9jinHQLMkT0emCKCPoeKBWo
	 UfaVAW6C7bE9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22D7EF8FED
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263489376.15358.12689983377412676285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7d7136a59ef8cd38d972e315d562a571f6fd1c114e77efb0c08f777d12d1e6
Date: Wed, 04 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772634893
