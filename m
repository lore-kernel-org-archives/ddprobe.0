Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD71319848
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755209393; cv=none; b=stECU/B9sCCT1cEpZFlj5fogPbTnFTunR8S9oKrTR4iF+5jrktohXMOakhvJJJa04bGOtiyaNiR0kXGqjPJn8oMZcimtpwq4iDUlImnbk/4Fl8rQjBvI/2yl72ioqb0s49laPOFlD1ne74v4f0iUx7QlKYlZkHlWV/7BEjUFap8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755209393; c=relaxed/simple;
	bh=JtrROIcD7djv5qECP4ezbqwcIu3q4nJ2VqIjZcLVbU0=;
	h=To:Subject:From:Message-Id:Date; b=noLvQEXVN0RwBF2ng5w1Ljfoxv9DFcG5+dZz3XszCHMv5sXH7zMYKcsvsiv4oadGGxGGzSm9Or0/ZCg932aIcmOMKIJbQTQTuk8bftzJO9w1H9mvm+wZuz82Vc6Se56dGMpdU5c7vZTg4YfORvhoV71zdpxKvXyrzT3nJSgoF4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhLeJDJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhLeJDJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6CCC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755209393;
	bh=JtrROIcD7djv5qECP4ezbqwcIu3q4nJ2VqIjZcLVbU0=;
	h=To:Subject:From:Date:From;
	b=LhLeJDJ4lGyaChu+tI/x+4/Y5oLKt8Sp3Zg9ITR42wslFFgKci8PMaAxbzG8Dsz+6
	 4bOCo664R5OKEc74G9NjAOJPiqxpZIKgZv3qXv0ZRVg7LGE+ovterSbW5pCJWet97S
	 tzlJ4NqShE5LVb9qJNSkaihsCdpKR4QQkmXm6oiJ5kg/qlRquAtJ0x2g/ryxjHUmUf
	 YjjUAPyVPWL4gOuBqGVPiYOyQNOMDs+dOnBlfUeb7ZK6IMHjf/Prw+KtZV0RGwaW/P
	 5Io1BBV4pmg8lLSSaDohznZaEae9Ii9rWboz3v/rL9NfC6R2tk/C5pyPLwOShPSBQj
	 vIXki5Q2XxssA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76ECA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520939357.22689.14581920407821954499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8faf28fb6e362b557d5e9d736569f7a433e57e9c87f8daac5094551a98cecb8d
Date: Thu, 14 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755209393
