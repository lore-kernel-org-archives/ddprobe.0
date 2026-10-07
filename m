Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2EF18E025
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791378634; cv=none; b=DV35TXz4pyigDxClwTEoYUQAJjvPVmT+DfcoMDLZAYH78E7fynqSucKnSuJa+9k81dekN/oXHZfhvhnOxXBXc6pYzJlCY55vbDQ51j6nyjFsKN9QcwgDkgki/FThB0RO7EF4Ojweqyt+zPlCK55tKI9awToTlVA3+lmntM8GzXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791378634; c=relaxed/simple;
	bh=SvK0uP8v6obHOqdi/xHAykanRHM5e1RDeQXi55S/h2g=;
	h=To:Subject:From:Message-Id:Date; b=ZIwpoNTpR5y2CabrkM6ojWMMIC5g17i4xB/cnDPkoZJ/APu5FwNkL9vbA/wat5VGZNmtr5oX/G4qQ4In1O3eweIa6QfvSfqEf1+0D1ZAw1r+I0y9Ph4grjUX6LJJXwj4VWnBeD7LcPwScxA4MR/XfIKUJ49ZW3NbRc5XSHgNpYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3cV4iuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3cV4iuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0235C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791378633;
	bh=SvK0uP8v6obHOqdi/xHAykanRHM5e1RDeQXi55S/h2g=;
	h=To:Subject:From:Date:From;
	b=Y3cV4iuGigA6N2GWCMcj0I2AgiFPZIvLHCu0IigQxvuogwGXDhDeIzSUkn6nyjDNg
	 DqIwAM6iOeQX/1BbRGPBpeFzZ+rqEUnc+OPf9cnsNL1p47rdoEgiD1HM8HofFqIQF9
	 89POhe7pZlxaGsWgZbl1IKlHVzPiqHMuB3XiB1B1zYYTcWX6blEnK+MGrylx0/TEc5
	 d3FdP1lOMF5IYylHkUZwq7siFH+0W0Q2qjIYwDT9GxgSl36pdlbDKL55DvF8RIqjFG
	 S3XMR+Hxw7aFr0fwtZLYzwH95x1uZP9mJGbwih8F9OCy7Lj+dZwMAhk73gEi7jToFE
	 QSw3xM0/rF40g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA18ECA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137863368.29867.17928170080344053369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d79595ec4b2d9619c58c017d921b5837d7d819d3ab20f7dde3f839484dd901
Date: Wed, 07 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791378633
