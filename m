Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486042BAF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736631354; cv=none; b=FlpkkkigZK/VNAPDizkMvG1XFv8Kv1C2dx6XWTQHszjH6bRhakFHFOqVt4J1RIk4ihP/cUO1NuEEPd/JExP7MzD1JhStXptDNInHiF1+K/9xmjN2g622G82nVtGWGAcOoRBSGI75bIPYCAyLcj828Og6xJ6298t8pyws66pisSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736631354; c=relaxed/simple;
	bh=fUY9hkO77nTUIlKOy2uK+Zu8fjsg0vZV2OCzOX6x5mA=;
	h=To:Subject:From:Message-Id:Date; b=Cwk6JH9/mnkniUrlsjdMeLrgsly1Z3NWbVEHeE47p73mfhtYYWPc8ahxtuCuMGowp7XLxPLUehnDSHS4b/4dBpFEuRzIYW+n7+MBJPqfT4XUbHwpnrbkRqLZipGaGq76LNwNWyZY1bcemuv80SNMpxHxAXW/FJflRWsxTtZenR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ5H3x+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ5H3x+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB62C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736631353;
	bh=fUY9hkO77nTUIlKOy2uK+Zu8fjsg0vZV2OCzOX6x5mA=;
	h=To:Subject:From:Date:From;
	b=uJ5H3x+5qLprI1zqruI1nxgSvenrmVFbO6JoK7rVb/BpYNnpIs1yNOgUnZm/SWtOs
	 JEE/obfbhB0Gx8AJxIbX4mrHJtjfEYgKDkHFMPXIGDxWs4iKpLA4UmreSDyJmXB9g5
	 SeulUnv175FE7mbbGdwcN0B9//EH4pFcr0M80/McNLVsQnRL5r+zAMZA4p213dcB6I
	 yZUrw6U6tlz5DwQwFK4mCH95sORxr2YJmrTGWzVzEWpdlDQmO/DmzHMQuZ1Wi/6Zbe
	 N5H5j7+RHhUs1DVDMs0C6SO1iVU3SCP/a1scLdVusgTKLPZ1GzY6AIYSVKlcgScrWy
	 8DnQ4hS+JXE9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93878E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663135358.23041.5201609070351544763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb7b46d29c0625f84142730ac697aec81a42f4b35c6c67a162a5db1a679d620
Date: Sat, 11 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736631353
