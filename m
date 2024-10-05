Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EF9288B1
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728150354; cv=none; b=OWFI/r5rGkUttwQOgrF9xz1UckZhuGZaoRgeSNJ4BApQnJep0wUHn8x9Zmn675PCdgY12NIGckQCAaJu7Yw6eegygncMFkz6jy2onMs2lOfSizK5OErGW76PghQRofdjL/Jdcr7spPKt1YOFQORHQYwuA77PdgGGUMe4O4n/ABw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728150354; c=relaxed/simple;
	bh=KrXCKqrZqmR087Y38/5tNeD+FNA//8eDp/Qy4lDywOk=;
	h=To:Subject:From:Message-Id:Date; b=uLDHykFXunQsquYltAgdyLsorrR+uDpu+r4TPT+DzlmeVbwTkWYjiZTC8K8j0GMIuA15MESPPS4Z1vQrgTHcDnJSe/OTF6ZUzZvYMkQLn5QIKjICwXm3SxtFUkD4zm5fQ2rmijy5L5z9u4PRa+UxggyicXFV8iNxS+GSrLmmEGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYJG5Gan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYJG5Gan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9F7C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728150353;
	bh=KrXCKqrZqmR087Y38/5tNeD+FNA//8eDp/Qy4lDywOk=;
	h=To:Subject:From:Date:From;
	b=qYJG5GanXG9Lj0EoyFbtHsNhGqZsKmesEK237lbJgpyX1RK9T8TSQKonxrUxgoKF6
	 TTLQEDLQR/pXL7Rt75fbJryEseUnXE9DdjcKNXa2vX/nk83r6GxQ4fEryuIZV3Uz0S
	 Zm8/orZcVIgx53x43nju3d7q6SBzuGH3R/pazqSZjsoHSEY3m8GA6uUjcBIFp6HytP
	 QXnD+IDglsa+5ZHaePnG2BUHIk1BQ+/ya7ADadjl6NPVs6+eEL2HgCLmEDPZOsCRda
	 pV+dw7dnb4Gf9MVvXIHfgvg2sgSX9EBGyxNjeG2DB83tTHrN96QfoZe1ER8/rGzgxL
	 gcR3RUBO1fjuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC2CCFB420
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815035363.26451.16928269205587184105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce05abac6c0dda7e1c89df9972b36da68ef75c5bb815f33844e912ebe87d20e1
Date: Sat, 05 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728150353
