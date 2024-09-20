Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C23B644
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726799154; cv=none; b=V6pgDdfkUzmrI10m6KUwhFiGvRGvT3csH89Jm5Xko+T7Oq3FmBaRGQ1GhTqY8xDnlrNvxNeoqB06o7gfdFNI+irrDEU25SIcFUmf5SAgMfBK0P3n5oe6hEG/TW804oDSHJoZ7OhEFXVqhDTT40eBnZWPQybmG3ryE8FQAM+zKs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726799154; c=relaxed/simple;
	bh=rETliWvXbW9i43bKIGd1wWGvyWcsQx+QwQayLay8H2g=;
	h=To:Subject:From:Message-Id:Date; b=UXO3C4jP2OwUr7qndXr61OXnfpzHE80mTkIXwogxqbX21c+gZrsSgw22iDeigUQQ+9fatIK9dVPbBgsvD79MQ7Gpo1IapRwTNtlcakARAt3qyESpjNnikuqQgLh/uTtzk5M53KSOrFJPudu4JtaQXGcECPhWfQP5BXJqysN2bzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHoQGdgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHoQGdgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B2EC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726799153;
	bh=rETliWvXbW9i43bKIGd1wWGvyWcsQx+QwQayLay8H2g=;
	h=To:Subject:From:Date:From;
	b=HHoQGdgZeBQ9F5k2UG1oKhDbbaHns/YFkQS7/MBake7KqFl8Rw86N3HT+HHgGCh21
	 pdhIQTMmZWMoR2jG9NVftyOJI+NFh+nTEXJm5CXfP92P10QK1xesBrbXROjPgBdLvt
	 ipw3+y8czmRbx1vggfN5LoED0dSbysy54NdOpNGTbS3CUDtnk/h/GTGlfiI219n4cn
	 PbGsWmAzhd+L4hmJOSzMOBADCJwbo3xrwpRQvUqkqXgUFnELsSSEe1wHeQt35mXelY
	 1dGeln7sH9vCKO/LI8hVs3xD9jlZo9uZYj6hnAVi0apRA/7GPFNcgdwdgHRCr8tlyR
	 YL2+Fdml4tZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B85ECF397F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679915359.15416.14736397386303726700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f90675e879aeb55fc344a4f516d7312b6e1a70f521d82059edc296c67251929
Date: Fri, 20 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726799153
