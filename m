Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339D12E401
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727973954; cv=none; b=idCYuvNm/3yIm9VJIIn/Z9+mxTHoUF1WAfeqWZ7JZLFNhlwrhm5IlrSYnVLJbWOnw+Zx7k37VP5b3pNuWw/KHYluDOw1PPnhCLYnZtUhNIoJvVXzbMifjUTyEHqEx4ej/VB35Wh9GTCrisoePqZSSfnFLNstmWY+jq9Op4hdtp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727973954; c=relaxed/simple;
	bh=dlRX0RHAYe8dz58DVNJjIX0OVfcLj5T3gmXjlNacBos=;
	h=To:Subject:From:Message-Id:Date; b=bIEO+9uYPyNrOIB9QmsQaipYgjqXOMQTaAwQxmmaAxuNnsUGp7yQfZSgwcA9Srg8VjHuJNks45OT/UT0QxzfjBwBWxKWyLub/F72d8yarOMRrc+QY+GTRJz9yCh6W95ZZZ1LsorLU48fsNimFFtuYZH6RavsSmF8V6rlJn0EH8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV9JuEQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV9JuEQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B355DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727973953;
	bh=dlRX0RHAYe8dz58DVNJjIX0OVfcLj5T3gmXjlNacBos=;
	h=To:Subject:From:Date:From;
	b=mV9JuEQ3g4zDesDTs12SCdv2wdujXVR4J0Z04XkdSX+2hC0OOu00p67aTHYUfx1N0
	 X4b8pbS5I1nP1ijXtRPOdFCdZsHeleXPADlZdf5tacWnDllEV5PRzmhow7+OPT+xlA
	 qhhdKxYnTqbSlsfUmViwi+EagBzvUEOgqZVC30J17pFpjDniZvLIH2M3QXec+Hje57
	 gyMq5hqp2eZRTDdBmRFNBy0evXelslIH3TnjO/o2s54+j2od+rFgiH+Vkx9XmjjOFW
	 V6Kv03SgGeI+uB7y/oHNZhR+ZyYPZDPMzfTUtDtSIiIvQslK1sHGJTrR3IDEVVB3I8
	 aKVM5t1vbVFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A094ECF34B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797395364.14255.10250461213926901985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5753db4492ce5a697ae432a6db9cccf148094f7f4df2649d29c9320bbfaeb6e
Date: Thu, 03 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727973953
