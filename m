Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33923145B07
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733456154; cv=none; b=qzRujVGvnAbcuhLhY48cGWkFMESsoazOpXHuwSSOF1CeLnfy8UeAIH3OJ4NzAkTx/TDfC9d05js3wpUrFbmv1eV/3BFwfdHMjZGadOBSm2HfrAoUvb+1flV0Pvx3nsp/1G59lwaZ3//QVu4kN9twmf9DMNHspF+5xNJVptsYARc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733456154; c=relaxed/simple;
	bh=76sfXfJf9rHSOG5hc7qxUuPoaVK6haG8sd6ar/UYq5M=;
	h=To:Subject:From:Message-Id:Date; b=Mrj+VSIHAtIww0WoOosnlWf955U3D6VmgFv8e5sXNxYqVcL6Uk/qC4kBMRXLuI4W+RL2xD9ZLLZFN1FsgtcOVhHLozCuIpUb7gpish1wdUX86VG/KPIwNSHlwSJxJOehDIVrqDNLEe09vceHSU+gj/Z3Ayv1fktT8q6YzJHqOjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLodu3ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLodu3ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B88C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733456153;
	bh=76sfXfJf9rHSOG5hc7qxUuPoaVK6haG8sd6ar/UYq5M=;
	h=To:Subject:From:Date:From;
	b=FLodu3ho/3/6p35kbQtbcCX4sGKDD1cK4QCTT5tMInLn5uVu2xG81GX2ZOi2lS4+D
	 GOdKHUF7JS96SUG5u2rzFyPRB/Z6iwV0i4lvRZpMVI9fWAFxVtuid+7iZPxQrSKEMh
	 OcESipXNfyctPIf3U7yezIr23E8qt1yxEzufbbi8/iCKpWjgcI+JuttpTlInjhaMvh
	 Y2903kJh5IjDpNgVK2xcLsCS/71vAyvpy0DyGpbMhr7Ri+GUuqnSV/GB4umx7o3T5Q
	 5FUU5LGZl+euAZ3GR30ISIbrcbcVGQTU3S+EjaDGaaAoPEBQ1+gX2TE832yqXWEcFz
	 pfKxR1rS6kIyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA93E7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173345615363.17863.15648262062967497636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491575da53fdfc6fdbcca9dc6e726067260489d16482ab9d3ef2b28f586b70ae
Date: Fri, 06 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733456153
