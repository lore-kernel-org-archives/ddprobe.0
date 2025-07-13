Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE8A2D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752378594; cv=none; b=ukOqlm9DLuHPFUvhbYSPRIKgJg7F6Jl3ycocRuhkki1IMaSoHJpOGji0hsZdE8TPnlzCLh8pLYnvIgUPh/LnpgJk6qq/CRnAceUBKSNzmWm+dIA1bt5jG+oKtgDbA+BCXEgYJz6UoXRh6WtiPuSTFLcYfp++Ypt73sU9dL92SG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752378594; c=relaxed/simple;
	bh=dbjnolOeWOcOTmxwROIYmwOwucknoleU03q5HLvjqNk=;
	h=To:Subject:From:Message-Id:Date; b=u+i7MlUoVXdUSMJ1QZJeP2+d8RJq1OB3XOtsMYE/reaPVrJy0zkWOMWiVfhHg+W4FDx+cCh8aDARtY308sv8JiX3peyxzzf70mRRGWfUGny5t9A55cH0TTwAhOiLbpkACqninPLlcpygeSbgG/CerlY4lfYUvVyQQR8ONK/XXEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tG5cFo3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tG5cFo3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4724C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752378593;
	bh=dbjnolOeWOcOTmxwROIYmwOwucknoleU03q5HLvjqNk=;
	h=To:Subject:From:Date:From;
	b=tG5cFo3N5hm37jZR3SahNCJZY0r06I/OVQM2FB7RLy4rFXDcfcAGemuaBMZrNjMIS
	 YRVBEvjDjWNtDCZga4VgxzEL4aC5snmkGE8zA7Qyxa1R16T4vRItA7yoIyHxK4KrG6
	 U9a69yK8H0mQjSUPhA/uTOhNLHTbNp6VY8Jei9htwjy3i914lqVOHXG2b4hFoLwvI2
	 rrrJexUT0YIfrV6FNMlUmKiUPeFiwQCbEns5/3sEpwfdNZkZR/ZnIkElKizjQeitrc
	 tMd4wlBq5VWnfYcUJ7oqg8XiQVj2tPMsVmPqsiaQ4qLgIrKj0cM10yv3wYbb9n51Bc
	 Z3/ovABESePMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9366CC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237859357.16355.17275404389473979718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b27562260c5fb1618a8050a2027885d18993c4aea651fac9dc99fbe7ad92c2
Date: Sun, 13 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752378593
