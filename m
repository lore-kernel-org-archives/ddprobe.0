Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC1C1B85EE
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725671154; cv=none; b=f4icAypgxGObVht7e/vFqCmIyX4mg1eCuvysVwbva34/OwLXwJbdR5Do+H1Dobva2qERkd5qsfb3mN+TEnzYkH2I6LB6vfhklqhQiLVl3WPHLaTSmKJia+7BkwJNcb85THNLSfUjjRU208lyh+kZE8JANsEWtK6Bg388La3Vlfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725671154; c=relaxed/simple;
	bh=8kxw5+uohfVAuJm5ZCyb+/MggWD/rfENUKvGAjQ187c=;
	h=To:Subject:From:Message-Id:Date; b=HIbKK9C1AWdMyURYRUFUCpTqB7EzZ361/GYjzXtlX3BiWwcC9t8OpitnJcsQOWzG6OV+rzF4HHk6MRiQQ7/JWOOjjWEMj3uq+m4rYbgewhz33WAemnIqMbrNGRfz9fCDXrLrOyEHJBSK73RAeT6G8w7GeFVH0VqFSaWu4W7Ri/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdnujB0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdnujB0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C65C4CEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725671153;
	bh=8kxw5+uohfVAuJm5ZCyb+/MggWD/rfENUKvGAjQ187c=;
	h=To:Subject:From:Date:From;
	b=VdnujB0/6/8kjpgkJj2Dlzkj20xAk1NmteiD0ezU2uzRofkdaTWX4tdWB8qpYOk5X
	 CxOG/3bH7MjEJxX/+u4y9Ss565ayZnukrecJRFWncAu0B9a4QBxhzRzTNX0q2m29md
	 FUDa0Fm4rXqNh2GzaisSVOTptc9OIowHntP9ws9WfvhwURSMHAYPE3XHK8H8WDUMau
	 HxuA1KcXKbGFBwwXeNtaprfLxFH3OkMQ1/RPM0NzzZYk9FM5LTUYUI7Ci9w4AFKR2U
	 B7RNZimZIwv/ZWt0TAkvw2d1ChNm2jtvg5Lqb6MeypuEFFkasgZ0iZNln1PVnb1kZk
	 L2fwGb57D6QYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E209CE7B04
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172567115361.6133.6742543486009840028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d659cd35aa5b0b44036752371c2060949929ae38d30dabf9b541fbae98eeed1
Date: Sat, 07 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725671153
