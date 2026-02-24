Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F823783A3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771934094; cv=none; b=Mrp6C2a7GvpWmoWcdm+1LTn022waU1WNP8+esD34ja0S7Qys0Q3CXjx9AMBOiAXUNa5xq3P7IBxWmmM8utFJKiw38/LPBp9mqA7LgqR2hya2y9ZJM35ates0NDc8pTIJZRJcJ4Mj9UmyQbWO63QddbFUrfRd0SqO+ZpB61Us+qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771934094; c=relaxed/simple;
	bh=vh/JC15TuqCFR2HHmsCihKSnKm+kEx3zYm4sw8hGw14=;
	h=To:Subject:From:Message-Id:Date; b=mm7vwFghOhKhAcuo+hf3wjWhTPAizVhFaP12iR1Oxzv4pqbYUa1KvfuqTfbIhxr1v/c7+Jre/tgFX8xcOhnwGuQF/a8yWpU2tKeFGcxZGmKAHfosyvZ9E8SXB5LW4n7cWm5b4dQFvHmViwQRvyizKIvpY+q2R4ooLsV9otThbYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NE/bQSK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NE/bQSK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F38DC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771934093;
	bh=vh/JC15TuqCFR2HHmsCihKSnKm+kEx3zYm4sw8hGw14=;
	h=To:Subject:From:Date:From;
	b=NE/bQSK/Qvd5BOKFjhyTzQFYSBkTzEJDeEoTbDf6iV5iKKjEjqA8cYPC5v11u5Rv1
	 WbsWXJTPh4lloIxCSR7blzO8H5ay+3si1GAsNv/MAFhkfGEkjkQo5fTFsasrrn3xGA
	 3imhNWlkngPJeNbyD1Gh2CFsflxaWzCrhpjKMf/G/HNUwHLvK0imi382qydd2VgzcS
	 7Xp4KHvya8X0asQkzA5DUfPN2EXj0x4fX5tDfVpFbDGSc7bD9mXscx1bDbUl2SpFaO
	 KQHF7Qmttefa9EXGyR6BcrB5k3y2aR2i+BDWG1orv4GPcOLnBTIfyqNvf8y1+lVCJ0
	 1kg11e6wuIAog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90987E9B258
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193409358.3246.4149887150107835001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2c23e8418a023cd5809174fdfee79bbe01432787c363ea74835120fb30ee86
Date: Tue, 24 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771934093
