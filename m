Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D47420898
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785276034; cv=none; b=PPcOeFnJrb2F0PaKdGo2KEV4PUDP3OtOa9nh/0Nwbz019XfmupfvOCeuRHT39rKf6nzdlRN9ogf0h1vP5rnu8l7yn9KFBhG3XU4a8WawyUcajSux4CqQ9R7p1+yHfmribi3hZQAXDAfckiTCx53m1t2jzsWy5Cy2Hpnaob7IONg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785276034; c=relaxed/simple;
	bh=qBeRWmRSZpJ9ZZsfmedACX0h0iPZLAH9pKpl5AA9u9w=;
	h=To:Subject:From:Message-Id:Date; b=pxMVq5pbHiAN4di1HmLKPW5mDfQLSUZsgTFYymk9DLn1RJTf75B93jMyOXjNq94YMW2A4CWvDa7pE9K5BHhYnTXBf50rTSB/zpyy+m5jeRFjp2Y4gx1R7h2T74NCuFHk2aS3h6aqu0PZFqn528VAxiSjmKrpVhVhnk15YTFO/DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l51rH4U2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l51rH4U2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50B9C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785276033;
	bh=qBeRWmRSZpJ9ZZsfmedACX0h0iPZLAH9pKpl5AA9u9w=;
	h=To:Subject:From:Date:From;
	b=l51rH4U2xoT0ifUc6bFePN9HHrO3UkSaB0lrx+iVtawmy2vAnTYFt7v8WxL21D8GU
	 PZkvRW3YxxSyP/KdPLT+cohQWwBw/9TOuXJzHd8aChkrXVldlLtgz7lvQy2kNHBCGQ
	 hmFvBTGq45PfTVEZe0Z6pBq7LroHmVyF2K5IbGCyBCTyFmZZoddZCBvIwnoFktzcTe
	 oedhA/fSjWZynJbngaDJttJ+SV48VrNds+fG0LDfGBp7VIa2Hho4baffUWEwNGP3Eq
	 t0sjYXwehF/huBl7JkL3mSBl+FETb5wP/NfAcS3ut5E2l1Yn5A2rkTsvBpYu0zkt61
	 0dvOofiOklJ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D9C54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527603368.24614.3077392721754809668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c006b8cd28c36fafcffe24a0fe20813778227daaf930480bbd9eac7b2371d46
Date: Tue, 28 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785276033
