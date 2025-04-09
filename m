Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC39215783
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744241394; cv=none; b=IcIi9CBsqc+9O3L4YcN2hDGDfFviI3PqQBIgQlU6rlm8eaLHuecu0LdG29ETgBXhXJpDRM7TK1NRcibTw9sXuUU2Hx9D1aO5cE3OWcotH9XeZmcWGLm+ydmQdZ56tYep8/iYBa107FhZavf/UQo0GpM4waXJYmx3tA/797YVMI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744241394; c=relaxed/simple;
	bh=0+TS93uqGULV0FuelwoLrjbpUDut/4mCMRW1IqAVops=;
	h=To:Subject:From:Message-Id:Date; b=W90LayPmVJWZKHGdRJOgoS8ePTXjR4eK4rrXcUJv8h61ETWKXA3MIyHbOpH1raOrs2UKFBMkjY/RdW0z9pz31uNvh0uYCb1yNxgWwrcmej67RueMBr+R6oC1UyPa2nxRNw+lhOf3oQpCvnGHEHOw8JFF2Ycfk2KE05NlwGFTFBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wym1rHcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wym1rHcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A5FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744241393;
	bh=0+TS93uqGULV0FuelwoLrjbpUDut/4mCMRW1IqAVops=;
	h=To:Subject:From:Date:From;
	b=Wym1rHcMjiqcu5W1IaPMmpK+5vWmbeI+bctr2hpmD5dtO3G+/8B+8agxSSVFlwMmU
	 OqSingvfnVyffVASCJ2YFykbRG+xUghp4YrI11iFtjTW2DaOwAdi6jmVlN6NNZViC9
	 J+hIAQnXvcHIj93uBINhvM0OVax44qVD6aOoQRfd46/33v31jblmoU6+5bXhFj0rsC
	 BHnRC8raVieYAwR/9fjp0+9C1EkUghcM50WBqr6poDqOBUeb7G3TQSwZwtn9EgNKma
	 FUZcXnuszy142EjW4s8ZzQABZmPzm0/NSFZ6dedP9OazL5tBz6yhXa2wJQ1jD5mSRq
	 FLWAty4ohMr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99953C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424139362.13582.2766652891718390809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca78a81a73bfeccad7bc6464e37df2b8c07814df505b06829f38e14db93ea57
Date: Wed, 09 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744241393
