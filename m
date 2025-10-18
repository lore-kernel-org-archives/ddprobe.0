Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDFA247DE1
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760760594; cv=none; b=m8hnJ/1WckrNaqCvqz2OO4qbyTFaBbMsiBAzX/vnj3a4+l2SjIlzli5TMa+rzZIll+PELRpYxAY2LxP+fTZWhrGcgQdBOguYKrT07u8IYJ3TcDaioD/rFBwwbJgw1+9fJcMI5fVZdlp02cAQ4k8C7EjMXAuXz0TXcq8Gy2E8ihs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760760594; c=relaxed/simple;
	bh=ISS5mAlE3lgoFHi3Ges++gjsh3bXXCtqwY/jZrF/sVk=;
	h=To:Subject:From:Message-Id:Date; b=EnF4S01FHXQkyXP9g32v66HfAkH/OrPL/A391Q2Ih4qft3W0qwr3W61mRHlQsMrbGB2Yle6WeL5ogUdKR5HYNGA1S8EC1rAvPd4vv9ZaANVsPEd0EPiiirrx7QXII4d67I5QIXySEhL7WCjJ07UI9lF0an0YRbZyy1pvuKXNu24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6AMX/bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6AMX/bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D61C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760760593;
	bh=ISS5mAlE3lgoFHi3Ges++gjsh3bXXCtqwY/jZrF/sVk=;
	h=To:Subject:From:Date:From;
	b=I6AMX/bx4WwH8M6jKYorLB5HkVAxAvzlag+O/9jud62fSZhLTRFK2HZV62EMXax4h
	 DthnyuL/BWC25A/5PJ3qGtcf9JcxImx2tXBqTn9sWQCib8yIRYmEQe8mzF/YnwOyQi
	 sGl1bbuHy5X0oByNHPhtT9DOhLl0RjUYN2eWFOfvtmjkzw1z6plOvHQDSCCghZW6nW
	 X3G2iIKMVvIX5sgZ0cRcxYQU85FlL58w4ZNuH/LwfaEq0GXzrTIvZs9xKWQWpyNnKk
	 edtqsXO7jPJCmvvSw+NEvExj2foB2h4Kv9yQ6L9tuVHeQ67ISuzTTSCRL8Lg5w8VCe
	 juZgZko1cfMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A13CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076059358.15755.18059057466204365167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a1944535c48585814dacb04cbfb069be3e4c6340ad7d66eead9d2c17bb9108
Date: Sat, 18 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760760593
