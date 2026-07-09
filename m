Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B5F324B20
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783636714; cv=none; b=djlYezWhCepHY0KGu2v1yJzLyARUr1KPJL3Kza5tS42pYFlR8HzZ9yM21V5fasfnBwstQOMSuym745zdTHkAe5zokcTH6apxwTU04oeMnuECYEtOyf8He5fkP/xt1CY8YHbeNIO1jdJTMexxwdppqQN6mJkVcLWg6UuiF34Anvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783636714; c=relaxed/simple;
	bh=JSmAxBFgCmte4gGBbX9iEfZJJW7t39PFAhOujrguF0U=;
	h=To:Subject:From:Message-Id:Date; b=GXdxzzSdAM5E7bI1jKEuGvvRmN9Ase7TktEYhnWO9XEo1qBfte5fIz6ciYTMCI7CcDl58S7N3LhzSTdulp6rdydiNla8egpOeTW/YB74daZbQzY0AYQa4TigbK4zmWQd/N/E1AQr4FQ4WIm7veewW8EXPnBCcotx+HuvD1qGmIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g02nZtLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g02nZtLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD62AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783636713;
	bh=JSmAxBFgCmte4gGBbX9iEfZJJW7t39PFAhOujrguF0U=;
	h=To:Subject:From:Date:From;
	b=g02nZtLZ+zLL9pTOFOVtrq/IhhCLfFrEKifnCvh89chpWmCx9D+S/xT2TozCmVQAc
	 QAk8SDiS5rJo5wsRge7Dwck9Fg1K+8uol2WJUpXc6Gv7tKNpLL5R57TblMKA+/cVRy
	 zO6zGOSo6TrtY+GfN/06HiIZuvWyQ0w0YO5O0vGGXlIFhsZlKztYVUF/Ej14Ty9wqi
	 WNcU/k8iJ8qCBggt0HvAJkSLXPr/aNVxX3Szf8g9DniLwMnEYljoMFn8JNNOskscdx
	 tMz/Q7buKNODqpf3OZdTpRmMXlNglQJUjEseQXh0zKj7sTzRcwIzPq5lRPI7lwTOmm
	 aX/ayRxwMuw5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C0C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363671369.6123.1349437745863709515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e507f478c83de809537cc3f3be55db44ba22cee49b2ff0fe1bd9fd44ad02080
Date: Thu, 09 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783636713
