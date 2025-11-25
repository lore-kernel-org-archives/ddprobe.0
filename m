Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A2121B905
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072174; cv=none; b=J6vnmY3ggmDEc+ZLmPQ19FE/DlAQRiJvxZHmzNWanDFdquoiwo9VHR52z1cwkTeXxLDCo5t9L9g6/IwbP844fL3miv/7XN3zpvQYwSSDjZh0q4tHT9eBroPWd4D973iaizEeCxBiU/Ftm+u+8FDgffg/gAF38UJp5zP0PmIau4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072174; c=relaxed/simple;
	bh=Jt+p5nOzOBKE8rq5t2rKjssFxQHITJTw/0ncaXl8HmY=;
	h=To:Subject:From:Message-Id:Date; b=EmtG0wpsJXWHdK+lvYS1FUBRWLGlwE195RMLjpIeklz5JxM5MdM+dZPuucbx8vjni3uqs4ozPuOdunJ/8JSTI/PcWikUoe2AuieAStIG8/lSdNfbEigUI+y9YrO3PJe/z7NCQmHMq0Qr225kjY5+fgQG2dAKfT5DeHQtglblyno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpSvM4op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpSvM4op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764072173;
	bh=Jt+p5nOzOBKE8rq5t2rKjssFxQHITJTw/0ncaXl8HmY=;
	h=To:Subject:From:Date:From;
	b=FpSvM4opblMlifUF/dfYdGfEViG8V6kosdFRWqRU1A/E4XDadjJlYH4tH3oN1fFws
	 F8yXAky1kbeKWrXnB6xKBljf+QJHjU0zxY4CIFq1qM7SRVljQdgSO+Na60dj5lwuP3
	 h/Yz+kluill0U0pZ0L5JLs6nvOd77q/veBVSMC8nS0hYEQxvJGjNWlD+DobwT5xchp
	 dKcaf74EHqVXpiFEdccf172Q76hQLqh8M8NP+binXcgBsNNtEvlDlOvDLCUodc1wzN
	 gtme49z57NjTPKfmvkG4Tf9TabTw9Etv1Qg7PWhWAvJeDEHR0Dnmx02L/yqkYQfjyl
	 4ehe7V2xuL0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91107CFD370
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407217358.10267.9845225965667576559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1a3f5bf4a9c2dbeb980c7e16c474cbd2185d293a501e0ea7c51c2640486fdf
Date: Tue, 25 Nov 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764072173
