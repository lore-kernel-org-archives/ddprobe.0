Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B749C1E1DEC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751597993; cv=none; b=mv/InGYszir9GB8ofz/O64dUXa5ds8MnErQYXOYr7Ly2kQ5cpTqOZHuHCsbjYi92J+gVpTm8dgpvO8uKfNaTwqE1zzNurMl32GZEpcSI70tvk+6hGQt0gQnr065ithc9RRsxSvxf10vmXQZDNeqfNOvtLC8Nt2QZ0vdWPR1bf9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751597993; c=relaxed/simple;
	bh=NQSZv/SjboKhp/mS8JVQuP5O0L8bIAW3lCaQZrBbsj0=;
	h=To:Subject:From:Message-Id:Date; b=gLBx/XA977Kr/aKQPMzw1N1YmTHrOAQVagBsSpJftoKXJnnVSj97/+cyaZBm6cQUTAsGF/ErAfCv1sbNW8o3QXGJxD84hAqspR2sKO1pPPRp6zAt43pqzljl42XnGpI1B2AiPNhXpj6nRrczbgJkXZdT0S8o6xhpW893WpUS25g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg9JjEvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg9JjEvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 978F2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751597993;
	bh=NQSZv/SjboKhp/mS8JVQuP5O0L8bIAW3lCaQZrBbsj0=;
	h=To:Subject:From:Date:From;
	b=Rg9JjEvnuivJfDMxIqhin7BrkXch61W2gg85QxlRNmAY4CdRE5U4GMIvokzGJXFj1
	 kap1VDGv8wrekKSJNY0dAu1CY1kcoUIKx+TM8fJcjAeijHxbv/cJ1Uhiqt3MhDIAJ6
	 zUOM8fuGsucrm3KVhpweoFEKzVmZR/T3ans4ipPSj/ivkYscgHysMwGU7carJXwaAX
	 3tWjcvk6T9DH6bmEJvgWNfvNx0Cr8dNU46aPrvUrDEXTOwsnfIMIvL1w4tRO/CeQle
	 W3Fh/GGRhUVC+pvba9Wqx7wbOOvISsJ1+BmF2rntVBR3O/NlJCGU2MtX9g9IcbXI+Y
	 Jl2Q0qkL7LpqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E804C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159799357.8779.4158867468530201855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03fbde59bbeb40d0afd4b70da107664902e5ef1fecb6d4d246a82cb461bd08a
Date: Fri, 04 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751597993
