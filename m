Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3119C3A6B78
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779319234; cv=none; b=bp7i1wD2T1o/SHm4l/fAl53EuIk4HYjNqexTuzCVTOKvxtAMa0hoKWKOTdFhVokc0WiEW78lAIALGtU5R1jBNlflMYCGq/lBxx6O4o+1QOzCZ8MdZI+TdRqQqBVQCB178zuZOPvNwwgrINhnyhe5PEoIEiHrUrRciVe0+vjp4yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779319234; c=relaxed/simple;
	bh=O7nyhGjabytHoULM/GXZQrKWNuNVuKAeGyrhnPEWanc=;
	h=To:Subject:From:Message-Id:Date; b=VuVXHMOik4va1L6MVBZ43HO032ki94Ws2HXOQZZUMvZB2a57dDVxNVpDOCXjTAmf2YezllYlvsBugUJYSh3DWCXvDNDeZyYT5Zre2Qf+/cMQBqON+je+kE0X7i16zdZzinkcfuA33Yev1tigR4l7CRjz/qBnhi+05IS+2ZMB7s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfpvXjrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfpvXjrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEFAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779319233;
	bh=O7nyhGjabytHoULM/GXZQrKWNuNVuKAeGyrhnPEWanc=;
	h=To:Subject:From:Date:From;
	b=JfpvXjrZ7aK3FgdrD5PanNSoVuszeCCIeT9420RDqHps809FLkD5CilQ9/d2k7p4U
	 RtD3pq+6OSX9PhgqUntusJGnEeTJI70TF6bn16aagsKGmQVIx8JEXBpcIB//Jb1M3q
	 jNeMqo4hpqpDVP79EQ6qZYyG6BojzojIzRzDeU0KpCYXw2hDEb127wtR8FO86kH5lF
	 fWr5aQKEns7KQyxAuB9D1hnar/C5Uc1wV4UuRx8c7KbVmaJ5enVPuKR6vO0OFN9Ws8
	 /+30fanVmh8emsA5QSSbBg3yxIrpX2N3HqlptTual3NOnduKO20cpqU+GchO50UUji
	 fPAABsQO2PWAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B181ECD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931923369.13228.11328155056991939342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dcef0d586bd0951f59eef72e43662152b35736eb71675c971a271aa6a8e591f
Date: Wed, 20 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779319233
