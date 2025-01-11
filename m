Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1B814AD0D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736621154; cv=none; b=DVTdmWuxxlhq09FTpdlKuUFnfc6fm+MyVUY0P9huHgZcoI0wzy0ylmtFCuVntqnNnXUxIs03rYfdM5vsNencb7rFsQWq7kORQS5HA8q6yqSizy9aR41B5PbU5GQ/6uMmT/c3j0LVuBz6t7gy1sv05dO0BB/qKtsxQjxOoDkxf3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736621154; c=relaxed/simple;
	bh=O+9hvw2JddGNdvGUFonnQOIL2NPINiZQUahA/0AQqvk=;
	h=To:Subject:From:Message-Id:Date; b=VrcM9VlLiRvzJcXcHDCsKrHhTl+CU/DoVuWcHenhLHTWGVquhwZogIy1I4AzX95TUBc+c5GmPRSXwSrEw9J7/0iOHrwnDkIqz/QO0CbjN60aW3JTcZlZrIcLFH3dev+7k1VRqJiVi+oHJkPllfz8tKftDGhltociMAV27OYhTG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4j66qk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4j66qk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B0BC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736621153;
	bh=O+9hvw2JddGNdvGUFonnQOIL2NPINiZQUahA/0AQqvk=;
	h=To:Subject:From:Date:From;
	b=m4j66qk8ElEcJGh0GbJGricuMFSfPe41YFBXVLzwD4t3yjZZtJYwLrCAvPeAbcIri
	 VUwSWU0MiYJUASFV/0RKJXztipOZGYEzZOmTEndGHbpdiAgZEeod52EYe1bwYTHS9g
	 F0DgLI0RV3lRkvricPuTMwhjpByJupAiuY3eS9DNYStSKyCe2/TnryRhSglK8tTCY9
	 IehhAg3ia72iM2zf6ZCYx+1zz8gx+wSsnWBrb+rp7OFqx0w5G0ollamNHj/EEDxWd0
	 zo7SWJwEg/va4f/3zw1gA7yLQveaO2K+vKjDrF6obXn9sW6h39qgOPAWD2CH7PbA1w
	 j+g/7oasg3SuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D4E7719D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662115358.27264.18045625203906130061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b76cb8548536a6c860392cbbfeb553967b01bb28466110b53497bca014758e4
Date: Sat, 11 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736621153
