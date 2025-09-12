Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159B3199FB2
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757660995; cv=none; b=gCxyKxLrpx5hQVY60MKvCa3EHO7DMI6TIrYjLtX53aTzJwKUkqrIqkDC692+aafNpGqhlvPs2iVpnNaUiWxYxsbkd/rvKPDVfWFv1BfiZsuEfiIMYSKzG5YQVAK51b92ge0r9nP6DMg85uzL2AJyNE1yADP5CxTMm09+mQ15OjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757660995; c=relaxed/simple;
	bh=9C8XUhylJYMMYbvCCjQzy62fX02yMtXF+NtPW2t4OBw=;
	h=To:Subject:From:Message-Id:Date; b=S9Ilt9FLUmiRdSSmdqn0GCTzRGMsTYerfT6tPjbzu2gDmWEa60YLbAgKW7q6ai/yyilUo8nrVWl3ahpn8v8vIAvEqM/8NGRjHwPnRhnS9Hyy7wqLAR70w/yyA52LkdNl1nGnNWoYWHNxvPpFzKZOa9Ti6VFkOgw4IV/nJO26Goo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HO3skMB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HO3skMB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF96C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757660993;
	bh=9C8XUhylJYMMYbvCCjQzy62fX02yMtXF+NtPW2t4OBw=;
	h=To:Subject:From:Date:From;
	b=HO3skMB0G+3lABWsGwZH0mohV8msaTHK1L+qfUbXK6VIx3iJp7B9OhCOH/MhWD4Fy
	 giC9zjrxxk7QNfGUHjOAz5Fz3n1RwJ67gkCuioEL/zVMKyFrBklRdusbdqXjrFPOWl
	 pZPHmSw0biWf4wtsXxwJ2loUIa1/CBWk09BOwhrmywFt4WfcyjljGmmusCzPd5YCwT
	 +3YWdaVuyUjtQWharb1/Ow/bsn0nxwKHE/eqfdCzmMm2QXFCTaJsPlqa+xp4TQsx/A
	 FNKiuewj9aztyncUYIowntbyYHsiML/lUyMc8p+0SNun923+/hx/+0OReytHvu6cMe
	 jLVRIIHSpRGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E798CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766099357.11369.5294951281661543698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3dce7078a4894b9b9b7e1beb0fdae5faf41b4c4455e451489b4fbd7c5527e5
Date: Fri, 12 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757660993
