Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F12E52F88
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749013194; cv=none; b=MGiqps2RyYaueenC38enRrXgxnFV8pqiYHA5adk85PU/7XUf5UPKWI+ufFJW2mwR9JeNxGYaOKfekvipF/lZrBpk391NiWCWrWP6duG1vJc/v1C7CkUbDzoblJsteBjW384K0LfK+D0FWAFEJedyrSN2YoqKJpj/fW1qtmz+gAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749013194; c=relaxed/simple;
	bh=WRUSRGGbLegS22b+mDelItz48cWLu96MIIUwsHi01EE=;
	h=To:Subject:From:Message-Id:Date; b=ktk6tHF/wOKdqZ9I6uiu4LmQn9c5MhfyYVjlKvO/F4cuOMmvTGvmLa2omI36yUN6ZtF2toRWTBXGJA37RKA3ADOhL5jlyFV+KmscXHNR8D4sK3ZN3qBGMWVtOBVaGPAINpEte5dp+udt3vMskUxUEXLGbyw0hJ4z7ZncPpfAmDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIxsGIjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIxsGIjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD7AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749013193;
	bh=WRUSRGGbLegS22b+mDelItz48cWLu96MIIUwsHi01EE=;
	h=To:Subject:From:Date:From;
	b=OIxsGIjAtUfOsvrYxC0fPo+QFrXe8otut6xDy67IGVBRdg8lOEyUhPwFyy0eHOLD1
	 u3tZuzqUVBnSM5CPaley+f8+c1/F/t6flcZQ82MACIAy+SbU6x26jMywpfo4nTGN3x
	 PFvxV/wT1QcIaDs/SUdLL+lRmHDtg1dSzAid3IqVwNk7uatRNHoAVn9H1vyXnv1VKY
	 f4Fjjyy0bHtetr4PW6Uqc5MC+JuOgPuSgb08sMUJI94zNNYLVtMJVl87l71zHBI2VG
	 /Ard3uQeGOVPbegCAe1+LMiOHEO3yku8bmS6/HBXL+d5Fweh0lH9mUwaRyx32FUNGd
	 BZa1MWPaFNc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E7C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901319358.2030.7087768978376403840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fd928b34231b02139a0d3b1c1305eafac005b306b02a07953ba9b32333ccb0
Date: Wed, 04 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749013193
