Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062243D76
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774197294; cv=none; b=uq9ERtZlI9ee83skJTcatSfXW5PPRIgGnfnTCkbdfKE6jsu+FvpbYH4JaEpCUIl8OBI+z5LH4a3HxSJvI/gIHoHUUcTOnjKuQoUxRzrwdDvjfbqusa8cpKHARd+rmT1I1REPuo1Wy+khxXgP3GzqufwItpxD7Ic9zKA2U1as1Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774197294; c=relaxed/simple;
	bh=n8TebHclA5+9Pv3NZ/OGPhTIqJ07N6FFoSWqmEZxYzY=;
	h=To:Subject:From:Message-Id:Date; b=o+Rzns9bj+4d5OsTbp3roAOH1gTKjIwBhVzUAuezpOpxtuAvvpM++fxelp5DYI1R2K9rDouC2gRi+ztkc5cHyy+2wmcOfAdruCA0Ht3Ke9kxYgpO3jwaw/RTY8pjGnhWfzmnFfQ07tnVgbLOpvvroDbvyWUbXRaOxvIIkT4ArkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/m3caZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/m3caZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD38C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774197293;
	bh=n8TebHclA5+9Pv3NZ/OGPhTIqJ07N6FFoSWqmEZxYzY=;
	h=To:Subject:From:Date:From;
	b=f/m3caZM2fI8rHRhpMwVtDa8JNVEAowUblHdtTQrK9U8VcY6iEi9O8tda96ksf9bB
	 IXJ6wNkEuzQsQwWdYAW1pYCMLn8h5q/QH3kvTgPVuKPV7UOUmv58P1x+RfE4HPoaM4
	 EpG3husAZ6yq7f59D3CsPWd44Eq+DHDetJgm1u+3rUPyNPBuExAjT26ArfXh7J6UU9
	 biuH8eYRB7I9CRxKwRn5X2UKRB1y0I/r/jsKLNQw8rzSBplwBOR1PGoFgbryClVuBa
	 5ocf6V8Axhq9Xz6CSB7QOZEFlQupGgkjK3lcyZb1XjwAvKuS14nz/bsC/PMRVmQmlj
	 AlfSPh1t5QXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95017FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419729358.21287.10468320644141169504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d242f6c0d9694f46dfe4f894a573ac8ab9c8e043c41673a3c787de70ae65838b
Date: Sun, 22 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774197293
