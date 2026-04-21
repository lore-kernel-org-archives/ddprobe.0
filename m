Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C812E719C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776792454; cv=none; b=RCBNCL/+DQiRSrwP6bZ4vmoOn+or2WTG6lVqKMZcm8PTP6Y1tM10Yj0eiK3NzhZbkCXctrjlhuZtxnzftJqsLvWsgoYkBshZqJLR9zWL5IIDDM2NQf6IV02IkeFh9u3Hktw/xp/pt9HbVfggWeBRR1YybDdODzIwd5LZuZevz3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776792454; c=relaxed/simple;
	bh=D/liCPyABX8Onwnzd3PXDLejE3o6EOM7lLhNEppcLxc=;
	h=To:Subject:From:Message-Id:Date; b=dZ59Crkmge8dfoJ1ySDdKDkLAeTp8OpFdN8hd0FvNqwp8xIua46lWJwzkDGN/4znMn3nF1CNQxH1pjm7UKTJBWfb3kb8Eqm8nqStTQTQ0FzNL8Dirjw9WPSQZyhxW51rBWtNH8ktQ9OA1tMx0gdYVOu7xHnOOcgVa6jCQsUWKPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0StVnF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0StVnF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA43FC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776792453;
	bh=D/liCPyABX8Onwnzd3PXDLejE3o6EOM7lLhNEppcLxc=;
	h=To:Subject:From:Date:From;
	b=V0StVnF+lWViaU7rCLTIGRq5sQEHow717oAftvSqMNCbBG2CzVaJxJ6YUqj3d9STO
	 5FdC7W7glVXEJsQjq4KXLLfyHWnW1Nk9vxTe/txpoS1QwKbn8Flkyj16koDNnFpYv4
	 J6WRXLQcWImaVODBPc37BMoOEbVbY/kjpKkyuVL4EUrp4fY74d/HJlz0yehFdp95qv
	 qOuxGku3eq8v0knqHhi+jaW4fdPIGgjE2fln1TDJZKTSTBV9+05k7zar8PKS5OdUaq
	 dhcSc53s1W8ciusDkm/GuMTTJ3BmhWOgS6PD8lA2+zRS0xiKakqp3te0r0qUTOfH6O
	 buvxBdiAm1uHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9160F327D4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679245368.27488.11093680832723333706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccbd1a42e03e61c229cf27262564db28f2461d6de185b69d7fc08eb569fa28c6
Date: Tue, 21 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776792453
