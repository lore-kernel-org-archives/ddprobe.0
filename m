Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FC0362075
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757081395; cv=none; b=kWWL+R4uAVcbr8kJ3OafOPlS318D/pAFzbHlofz0EZbCNAd0WFyY+15da/9+1bt+W4ILCb8MnGOiitC/kqgied512LpbuP89lLM4rLtxaK1ZJ1e8nISJbYjKndrmUxqlIjcmQKZv03GzE/NP5MEpvFbFjJoutFz0VFAGkgfQqKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757081395; c=relaxed/simple;
	bh=NX5iYmnWSSmgeq55b7ULmUVWwQ6Lu5bmiGvZ0e3WJlI=;
	h=To:Subject:From:Message-Id:Date; b=OcM+FSmeLNrVg4zqrKTZAl0hpgSBz0Tx5wDUF/lWu3wGvLUT143ZoeM/X5BUJF9jGIoQzRANJ2l5Vcop77vf6kp9ZI4JzspcUdE2rPsuuP8YcJYAOh1Yb2MRb/EIRYap2LtA5vCh2RaEqbRuCGxE4ftDH0xsswYeV4xh25S3X5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd53DsnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd53DsnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2276C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757081393;
	bh=NX5iYmnWSSmgeq55b7ULmUVWwQ6Lu5bmiGvZ0e3WJlI=;
	h=To:Subject:From:Date:From;
	b=Nd53DsnAkI/lDmZ1n6EKsO0w2410l6H+ZCse6CwYUGg5+TQ0kwLbB3cEq6MVIUetg
	 vphtTrjLh/GiWpsdy8LuvfeoZxK8VZd4V0Ap8YnpuhBnToRnTFxb5uL5i4G/QCrTq6
	 tlID3sNGgN9vP3F3+Frjz9RIG6pfedD7/73LcoS1055tdcSoWRbdJF1KY9+zDFkSVD
	 uK8nVJ4q3GpR3EYTwul4ZgfDXUXP1usq8Bb13XPJ63/CHL+xw0oaGceO7XGV5EFkX5
	 gwJy2oxMSf7siRf2iRuDRLyR+mbIss9KZ+WFotIAJ+IOshjrUMGn8XnBFbFHJ+8VZ3
	 T/W2o9cacbCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9ACA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708139358.4987.2408373535101756265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ccda8d52b14cc33fa208567992ae8c0b1216bc2de688358cf4c38c252f89e2
Date: Fri, 05 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757081393
