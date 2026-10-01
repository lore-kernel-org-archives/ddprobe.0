Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6998733F59A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790814034; cv=none; b=HjYuG5GmiIFWm9S7fwCgPEGobaXZHZ5P3wqILopG9AuAilG61jSuGPymLP/UHX5jkTNsaZ2f2PmBpjiqhMteq59vFVWZJITyST5JoSiDyYy11NYev/Vo/tudiQtbrGb8vSGdY+a3jd9uc0w6UKFoMYisXJHQa8zidtZGyW+Dg68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790814034; c=relaxed/simple;
	bh=cZx0CwtHZEoY5VF5EIFX8QZaDsw49UgStdSRrMSM6sw=;
	h=To:Subject:From:Message-Id:Date; b=k/O9zbV+3+gpWxEBE9+SykU+w/pcBtBX3fQULqBTF1j/6E7wSjvO6xUFgW71p3lN7Rcm72GSvzLYqbtMOUMsZ7MAAqAMpjqN7I9y/8BGwFHzBI7pSbpSWyd5z7LQR2Ws8tynut+SFSoCNqgEiZmzYc3OH99AeNw/szaE+Tn9peY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hplt8SQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hplt8SQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFA2C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790814033;
	bh=cZx0CwtHZEoY5VF5EIFX8QZaDsw49UgStdSRrMSM6sw=;
	h=To:Subject:From:Date:From;
	b=hplt8SQMPLAFZHB0FMPasoc0eGAcQNiM+ltMWLTJwgsBz7HPAXQaPZAbdWfbxo1ZU
	 fWjBvNoMB+eo+k9YQOpp3wJ6GEQxqEghGUQTtWCyvM0eD/Pi4s2kCvOnnA0+jt7MzN
	 MITYx6Iw1eLRPHQC/cSg1Ltsp5EgKWFxcJUDh2QNmdju+kwfao6BSbWiMzbT95VFR9
	 8hNgScxZNg/u3FLfcWDqbWU/VMucmrRWKesCKnYwbmVBJb6QkvIX7x6ufBlOJjyRan
	 WNelvZQ7DEHagpNP2fafZZ8byLJPXj/XnPed+1UdEsYX59zB5Ak0r7PR4AMJHiJd9+
	 vEFh27+SXlHzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1EECA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081403368.15398.3088793451287016255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed318c4a7257e6e90830b6db64ce212743a99559cec1957cc164a66ccd44d0d6
Date: Thu, 01 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790814033
