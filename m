Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E0C746E
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726980954; cv=none; b=dLdxYjmuB71Rt9VtSQzVuNW/2nkbazS8OX1N6HxCJWlhhvceXMkAx/eBYW95aL0iOd/QfP++T4hh4sbbhwGcfIuOpS+dhjKIQkERYoN+xLhbGrObA/GXAa75ETTcOc3WDciyLPTgYKHr6G0U2Qbcia8cbY/c2cKaOmHEuMCtDnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726980954; c=relaxed/simple;
	bh=6Dnrp3beQ5WUcdjuTQxF6MRXJ2i85Z5GiaH95da2R+c=;
	h=To:Subject:From:Message-Id:Date; b=cnrituQLE1uMSSwz+CKIkv4ZpVrXdBpQ4hAj5ShxIdMFG3EhLxPqcFr5sg5LOpFjEJTuoV0F/i1TjzIkbT7BvIhseENBGWSDWESD7C/rJQNeMcvkGag6xYtyS9HhnYJyDrtxx36hwKR/6H4PVx+F8eFWuOo+xci7c4b5qvBt4MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwAU96T8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwAU96T8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C5FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726980953;
	bh=6Dnrp3beQ5WUcdjuTQxF6MRXJ2i85Z5GiaH95da2R+c=;
	h=To:Subject:From:Date:From;
	b=FwAU96T8ZGjR0IfXqJf74wk+oc7GhorD6upFuJlZXki73/JF3rM7DF+ZNsoOy1i1W
	 eOXQVii8+wbnZbWKlljqZcThy3wqdGSRBbZRTNc/e2Ec4dSBUpEPKzpFWDT7ssvRQs
	 zPl8d+gXbu944w87UX4NGj3RuJkAcJyKhjoLGD3u7I7etRd8b9vh/eLz9EIJE4OWNW
	 8ew3zrKhxDaAEuG60ouDhel3WDBG5y+n6vV2/BBnYfPe50GxtLhrfqtYiCv2kSVOPa
	 vLwmsQWlCX5Jfqu8e4b9rc35qO626sDKybhVn0fk0rX5rGP3inOhkykj4xiIb0miA1
	 sLttYxGsBUU+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95297CF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172698095358.3337.143126456992615441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50015981617bf987aad9d7850d450136f1665fc10684bd22f9399645fd6ab0cf
Date: Sun, 22 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726980953
