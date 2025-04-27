Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7888BE7
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745717994; cv=none; b=PT3RPD/nLNxK1IgJRRUx6QALS+g7P/mQrw4gQSzhmrpswYo0jZlXB5joYPm+alWQ9bGHZgEI1wlLkNdtVqyXdbORCfnH+hb6Ybftvjwan68+qSsdtgw/HcRSYLdW92COJ5NlKPJXFbwnUh8d2mQgb8MK4xmrIUoYG3ouo58+Ec4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745717994; c=relaxed/simple;
	bh=2HFDECicFyeq6jomlPT/Ei0naZ4DcjiKwKDxhIXXJss=;
	h=To:Subject:From:Message-Id:Date; b=htTQvA1CgSlxVXJOIVUo+Y4fRrUjTTmCcfrGUMGMbjasJYWxZ1wYp2P51PKK7/tExCbgdjh1pxYxjdPG2/7cnzrVt+xvZNQgM7AAfOsBpozCcX05PEzqniqe8hEHltZHJe1rM1UvXjJoQeuuLG/wnq/c4F7nNWDO7czs+ofpqqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DthgeF+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DthgeF+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2050C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745717993;
	bh=2HFDECicFyeq6jomlPT/Ei0naZ4DcjiKwKDxhIXXJss=;
	h=To:Subject:From:Date:From;
	b=DthgeF+meUxgvpIBxbjyxQVfPqVfUc3KQfJYL6vmTcNXaEIPDEhZYeif/B0zDoa+p
	 YA0taXNy0tjHhvWB/1yroB/sLllyIVt7+hQ4P2oUaDXa/k2bQvhlIf424oOfIpz9gx
	 9ZYkkKowICrW9MxLPYVJwK0Pw14JO4Yn8ApCqWrkZ9Bcf4uWK5Ex7imJpZ0NCeDK5a
	 md+A+JnoD/EylukDny2sEc6sc/pfw3KXzI9Ss9msno/6cBdzRhVmK1G1aR2+1ytrHi
	 TLIeNdZ/6VasAvsZlCpZc4ZqCfccLBfh4MbkjS6XIlvEsmV4F7Zu1KkQsFcaieFrRs
	 l2sBhizItZawA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E59C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571799357.23406.8602129683843923492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91968dab8e0449a6923a14c5e096613d13818becd9d1b05b5448c06828323a04
Date: Sun, 27 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745717993
