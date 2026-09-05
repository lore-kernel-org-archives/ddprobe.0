Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F619DF59
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788580834; cv=none; b=sfiArl9In8MuU7FMXKZLbHnTII5cQAqsexSc7Sj0fh5/p2O+F7jUMsoibXuB5FjygNrrKuEFW5feWfR4xVTKrYpQo5x6IoV7n7nivoydzKYUR2qzePIpiRwt/n7lM0HZM8U+z+Mcxg2sZq7uXWRPMQpXd+SpvTCkiaSHJpeKQfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788580834; c=relaxed/simple;
	bh=CGH1zBjPGgy7vKTbnqmIpnFwRUSYKyMU7AN+zlfEOgo=;
	h=To:Subject:From:Message-Id:Date; b=k2npXVRgA1jNEwie2S3bxx47Mq2X5YJxJWq2sKWw4PAu9uDmd40ShMC31KdVdnUfAPqSQmDqT8qiBguOPo0wtPhJXv9Kmpqg6caKJyYcO++YB2V1eQ+oo3vOnQo48B1WfVe2g8aw+tyEfsKgW6AjF7q/mQebG4jxwypDMf9lSkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOZLQo58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOZLQo58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ABCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788580833;
	bh=CGH1zBjPGgy7vKTbnqmIpnFwRUSYKyMU7AN+zlfEOgo=;
	h=To:Subject:From:Date:From;
	b=JOZLQo58KuGYCaZnLulrpfw4CO8pNqlyEiaNZXIR5W4G1oiSBKmFn8VApwdJXEhda
	 qw7SM2sRFUthOyjQCdt4IlFb9/nvL9eP/SX1kaEnk6FjMtwaqItosJU/d97IHHAZRf
	 7unDzWp34o+OlFB+JMJVd2ph1RAsgsiQ7jwbi6rRwhcZV/JBnK3To6zS5syLTZa/2b
	 JssO+n2A2rRMr/NMSMAB+30FlwSbssXTPra806LfTXrVKCAUMTZwb7l08rzHRa+7kG
	 QgnJ3lLT415GueHhDbt23YENY40pFADXmC+JBeKw50/P1+CVjc1wOlrsp4XmAgwK6T
	 ftuMhkH4bM2uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD348C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858083369.31632.924475527875376087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f34cc99be47ffb566ce1b219d78941a51c2581bc2e1ebc10e44dd0700a1dda
Date: Sat, 05 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788580833
