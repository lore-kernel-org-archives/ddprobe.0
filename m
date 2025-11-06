Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1BB12B94
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762405794; cv=none; b=Lk/v0HesvmROK8mKYWRiMVWn3MgO0Z6aAgI7eDsrUoDgy237I/OaQhOhdZbYZ+e+UC8S4jrAmyax2FjgUcW6FoZgYqLj4Ku8ee+CSn/fmbXLaCeSaVUMTmqqDtn2/xp/5eR7K7aGpg54EKUDIjKUTOMNm5D++Cp+aJ3BpC8S+lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762405794; c=relaxed/simple;
	bh=H+8JIQBRwUe1zAaMZ4L/TfAobW7NG/9MhHfd0fkdZIA=;
	h=To:Subject:From:Message-Id:Date; b=SoGRR9NZkynVXkaA4GhzSroZTwj0afshtmpvRgNrk9h0OdhMT616WARUkUEjlc+/DkmZ42vRpsP34i0uD95YBUDuKMFUQKDNkbPcX7iF8RG7ZwgZfvssYadm5nJm0QfaMmlV0VzcDeGJTBPxT5gVHAk1SODBigxP9wfjdyOsoj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UByJ6M75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UByJ6M75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1C0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762405793;
	bh=H+8JIQBRwUe1zAaMZ4L/TfAobW7NG/9MhHfd0fkdZIA=;
	h=To:Subject:From:Date:From;
	b=UByJ6M75tCF5qef+WabSPuiTI/6t2V5aDu1FXGW/1AzzVDP/omJKsrtaVjxM6Thyt
	 P968uvLghPoHbgmqWAy/ekxCkzCTICO6HZSCOQPWxTQKeYGezTOQ4+DdBIPdD8iID5
	 GUxc86UWw0LfEjQntnf+B/u5aUfISxNMbNan+kMbU/Ug/azaMFQL2zSxvEoNbOH5f/
	 7F9lFY3DCyN1dQgRTJvlPjyWBjaoCWXfokmHs1/S3lEMAjzqaoEaDCyfErst722X9T
	 qqFbnWB2mAdwQaHTLq5PGgik89zDQcO8pzyl0W+LHwjllxWcZQq5xGCuBuxRPKPeNW
	 DSj6sMZxpAayg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58DCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240579357.1643.1656598831284051177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9e28f1dfb218cd8d4eafaffbd1a1754584c2214137ae3e17af670bd4b8dd01
Date: Thu, 06 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762405793
