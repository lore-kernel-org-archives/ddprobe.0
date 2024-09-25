Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130631D5ADB
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727279754; cv=none; b=kJmWG8WHKiC7ZnPZOHDMU0qZPv2whbXa+kIUuqL+2OftqzMLqiO58swTVyFwDeQEdfWVAZbjwdOmuakBfBnRrhqzOMwZSPhd+RfgTZDwhWO5Cvnlic60NQ+RyUqU2TQridg+jeutyTKLF7C9aJDSXqLM3H7N09G3iN7dj/B16CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727279754; c=relaxed/simple;
	bh=KgtKalYuD2QcoZWa55Q+ovocx0Mbdovifo6vYCrCmBI=;
	h=To:Subject:From:Message-Id:Date; b=mP1lYpXDwWRa+c3AP9awWtWPh3mJP8Z41PQwYNqMpEg/MQObprkizuPXmdbz6uGt0x7fgygzjSIS7+M/KCKbXLkkVixOcEu0mqSwApUrRBuWUPxePkpQecn5ZYviKJ3PpwPyYFjE4s0Ze7W8ccNZfanK8tB1S6+1YuLYOZ6CToQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOwMX6Fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOwMX6Fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD94FC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727279753;
	bh=KgtKalYuD2QcoZWa55Q+ovocx0Mbdovifo6vYCrCmBI=;
	h=To:Subject:From:Date:From;
	b=ZOwMX6FyUIoj5OVO51j024NXKq3MJJuC3mxooWimNoAy5RdV+lVBbyPeDVFATDJd+
	 PBUcjeiX1v5i9ELmrU1p9601PPGX0cW4JSkti3Ag4Mq9b3j/0yXCuj+3AKQyNlBWj0
	 tkzDaoybEt0ieWfgq7wbqRPmjRqLV2LdGRIsHlqZ2yO2Jy3v9GcZ5Lia9q+AO03Df5
	 9dmSrqJorEOiZn4c41T/10aPQlKyHLl9fPWruagYE9sVzuhhIVq4NiVFtabs44OMJm
	 oIsUp8J9dKQjJVyEY7qOB9StORcI3fFCAkNtVeevxWKHL+NK7FDrSWWM9YSO6OFekT
	 FwESPk70af/RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A93DCCF9E6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727975359.23863.1424613181251274347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ccdeef50133372835f66120d8395835aca79f7118996ad82397dec2d66e37b5
Date: Wed, 25 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727279753
