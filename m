Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B535A55
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752197394; cv=none; b=A5mTS/PQfT8m5cD6iE7bzjmLoRsYAZyhRy+YXjOcNVhB1Adc10HRMeiCmno7PcuLa5U/PwmCkpDX906gxIfYp/bwifSMWiPFeVD91Vjv496pYzzyOa8FhHRMiBhxIi9rC8oHpdVEW4qyNkRBUAUmy583+1Bur662IfzNfDzsvdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752197394; c=relaxed/simple;
	bh=GghHWYfO1hBpHtr6eUsezlcRFjs9XG/ETulUYJjYOk4=;
	h=To:Subject:From:Message-Id:Date; b=fYsDsflGJXDgPzAbc/biEJUlPDb/xJxaEvIBWTfzOVgUWyHrFVWAnETyvKscKb9pQEkRxhjJ1misYB7ZDgtK8fCjqKWokMhCCxrVQLyRpRL+Bsrcl4NFU4zfZNBEpm7iAO6TBNahlBsItmsxL+XyOR6K6y7N4WaAOwciQMAM45o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcCyJrDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcCyJrDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D814C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752197393;
	bh=GghHWYfO1hBpHtr6eUsezlcRFjs9XG/ETulUYJjYOk4=;
	h=To:Subject:From:Date:From;
	b=AcCyJrDNnEE64lO2QelyqBCZaZPQZIWvrOQpejr4Ln+hWiA2+yLj1KyO9z9xgUUN0
	 YgL120YgkW1vkfbvlrejzOaDKZBVJHvL171XkjErG5/lcAfwuNGga4zr+8sBxYyxHw
	 lxZIB9EcoiAsfi9seMdkviORUPBa/oVw/jVgLv/tKYY1wnGWQ/Bm1/vzWyAnaBJF3X
	 V1liv480iuTBmddY1UPQbw5VAVMcdBmNVP0TleO0Z46tKcIyE+QXCzDiRhTT166JRX
	 1S3Q38mOxAeC+APqKlveSsWZEloVqXmo7/6EaZeXG9J3Sw3vZQe+gjQJtPnf27OavA
	 TVSZxwOy/Hh/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA3C83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219739357.12472.15186455863942476377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55046d3acdd6502dd4504513f5699a4a8f12d3f47b83f63e23817a994b76e76
Date: Fri, 11 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752197393
