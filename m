Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49ECC3CD8DE
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789901434; cv=none; b=XVjddhCYjN+j9p+K0im4ZC/PWvxqSA2W7lAEfKsVplP301ZaQknoyM1v9hKhIYLY1jdFelWHghvmXmsoty6cRb622PJEBl257VjgKnleAMMucWQy7Q2lA/PmIRa5q4vkWvQFRQIXJGJse1fZAvW3vzZoZMBmq+q9DQcQdfg/ECU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789901434; c=relaxed/simple;
	bh=mX2T/MwF7PCVhRdwIrfVmx4lWm1Ca4JPwPvzpoMfuhU=;
	h=To:Subject:From:Message-Id:Date; b=hGKVoEx+MJsDRRjWYiJGEWcfTTwRqRfe4QUqr4vsxxQfeoRVdcXwXG5tWi1OojaTWZYUkAhfgSikumTu1d6i8eb/MLBHIe2NjWNc7AmnFxnRfIonAex2zug/oe++7vLgWPsKYKfd8GhsnA7oP5+2ax+B5ChY82Xplv5CBkTxdKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc3D8O3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc3D8O3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2F8C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789901433;
	bh=mX2T/MwF7PCVhRdwIrfVmx4lWm1Ca4JPwPvzpoMfuhU=;
	h=To:Subject:From:Date:From;
	b=Nc3D8O3ECEIjz0vAfTvit0uNeactnvAPghf3zPlRaWOeqAXI4M3ZHjk5sWClgf6w+
	 B7gDCYxlZaLXeP8UxXsqHrilQddMH+/c+n2Ny39eHa7DpMnjfgNcWe29sU4VK9Y8lO
	 aW/w2i1VyC1yJADkZny9d65zX9SoZlEHpYvYPponBl432jkkvdJ40bSiLpBRhKIi2Y
	 lHCVDzVoVfErUqikF1fPIGsorWkB2f+9Wdm640XOEzmBXHmMO+d8NJzEXO3WoAHfoT
	 K22FLip1BxK/+ue6qlCDuju/993AmvNnDzcIKTaOF8ShpIAotHBEwOsWdQOg/lDOM6
	 ot+N0BsSSRHpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB848C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990143369.18641.7758624392152936282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6059a0cc65ea05b56f32a920ad18ab536db798409495a0f8c5174873de1d05c
Date: Sun, 20 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789901433
