Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28903219A7A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762711194; cv=none; b=AlMKwXWD1Rpa3H3i2W6MGzapV6FSuLB01S75sy+/oFarQVTNye3cbPrkTUgyR9R00oJxtBYI/rZESGW9dwnfSmyDAkYtA0R2v697N4vg/fZbH65l7PipvUyx1XFrEoUjaYSgWRDfg1iYqqi/2X4K3ukpP01AUWVMqdfjaG8KdsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762711194; c=relaxed/simple;
	bh=D6VCl+hlsjEl1m6509lMCh4j6CX7g2ZTujBaK+uXR/w=;
	h=To:Subject:From:Message-Id:Date; b=WQyC0jHW4s25ZPyYR77Z/WVV69/SNhWOFzlNYAWjJJ31HAWUaNKt1S2q/my1Uix7CfkUAt8Wqp5IzHfEkNulPHGZbkdXm24FW8laf4CvRfJTuJ+gHEztEwHcMsO4o8F2Yphoclt7ym2OsX+8GC9LKfhVNfPdKs4wYyirWe7nYhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLwmfpoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLwmfpoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C87C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762711193;
	bh=D6VCl+hlsjEl1m6509lMCh4j6CX7g2ZTujBaK+uXR/w=;
	h=To:Subject:From:Date:From;
	b=GLwmfpoTG0D3y+pmQ7q+vnVJEpDPSaRzQZf0cHWUi++YZR/5uqOcR6UxCzNWflQ1T
	 c6+usY17wEvYjUPl6eKEg4kvvQgFVxBKb3PRBlnn0RtnFf/8bWRv7quIIT0AVcAuO0
	 XMi/0lObEeF+A99OWGgqWa3j94wN4cugy612CiZ0GOStcEt7RARY0jNXRkw1tr6pME
	 BBH5QeqRyQyo5rK4jeaXk5xmM8B2KOEEPmPMtUaLl+V4u89xKLmx9+FYjVa91rxrSu
	 Vibs4CfgHpRinGpHl1jWj8oNoCZRKVt1k1ElaV6brO68bAZjRed/UevQQmnycD83g3
	 0MKsCwIU0Mf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C5FCCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271119358.16320.12758303729731408005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a941435321f1a9c60138151f5ac01c3a3e829e98d214a059acc577ebe31a2462
Date: Sun, 09 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762711193
