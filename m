Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2517230C341
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758103194; cv=none; b=n/NM3mwbx+dsVpwGEVbgIO92f3KuBPMYMjPNk2cYo8LBKeQ+5Ga+7h7/Rj4FfmjRkbcm5/Gyt1xzylGNxIcy0CV+k2FgV4gR8JaT5Hbji8kFAH1UntUHDY1gFoqCtvBC90PFL0qf93wHhzEu1xbi/g5udjrmfJ2TWEnpP7PTKEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758103194; c=relaxed/simple;
	bh=SKccm5GVODnfx43Fw+/9RfdvK0GEQObZIGVhP/gwMJ4=;
	h=To:Subject:From:Message-Id:Date; b=CUAeTHHw50HOe4nO3gRmmsNWShwpZako5gqxVKlBjk5hrWWIMFNalSijZ7hsURlUbJhz7AVkOhB6k8L2ct/5VVZqVXthrXewcXvVKqs5z8wuSFsCBs1sdERR2PPS3qMAVqaOVWDSfO66XdcP1hpqdgOVVn5E5TFXfOmNtoJUxf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uY7dIQqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uY7dIQqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D5BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758103193;
	bh=SKccm5GVODnfx43Fw+/9RfdvK0GEQObZIGVhP/gwMJ4=;
	h=To:Subject:From:Date:From;
	b=uY7dIQqfJo+tJeUtUErk/HW25YkdDmnQvaDC5CPH/uH0xwosjbe410jSFvrjxDPCd
	 Fzsq8SIW9j+OS4W/9YFXUgq7Z9fB2adQDmEqQcEOsdEySN3YgfT6n6NYsgwbRvmtUn
	 ccBjwXksp1ZC+Q+mJ3As39zQYmxXumUlJbCl8xuGiyJ+08jwf20ZeiAU4NeLS2mg7M
	 Ol/W2hKrsWDr0l+a/Pq5POhAgXkkdLamJxTAsmYY6VerfEA8uclxu3C+JaNf3EBoc9
	 gJgyWK/6QGvCJIL7Ey/RfPY6+OvLr0Kh8tif6HMaJnoAfXIYqYGAmmItYL1ys0FFZr
	 GNXG79WtYJ+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C8CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810319358.6560.8672122756663750180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31db37434a8bd7b286b393f801437df06c009049a4ce5d9a6fcb751a094fcae
Date: Wed, 17 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758103193
