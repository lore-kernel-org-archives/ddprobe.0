Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3424919D06B
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725542754; cv=none; b=u/RKlEiiaJaM7OFKXpjrnpocKsWZjETRvI6hv0A1DOqRyTWz91YsnUkhqnDWzseRSla0bLXy28CamP803N8jwYKEwR6eNYTPrSHpqZKKTjbBKCID5cJd5EheLP3sXZVOrlqAoxoC33nOw101eZ5a4zOCdyXc3ESEhkk4BjfSmiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725542754; c=relaxed/simple;
	bh=4qdhkuHKQO9I7MQig0LWUNZjSBsVr+phz+B+ps3U/DI=;
	h=To:Subject:From:Message-Id:Date; b=KSrgM2+/aAmWiTFwiKvjuHEUWCgElzqBX/bm10uvmOtbyuAHCAljaf6Je6Qc6z48HtZUo2Cy94h3+8Gk4uoJnICD5CJvAzQ9M6pZVtSrs8vNNKi93xe8AfI2MLy4Qg6QDbMB0nmmDr0kkf9yVsOQFHRNzaC5jKgRfuYDLG64on0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVRj5IxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVRj5IxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6438C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725542753;
	bh=4qdhkuHKQO9I7MQig0LWUNZjSBsVr+phz+B+ps3U/DI=;
	h=To:Subject:From:Date:From;
	b=MVRj5IxH32S3kP4fWj4sK7HkFeb64SmWhVu8/o2KgCU4cixi5jJyA2KYyvTBZg01E
	 1OzO8wkccB5kAt/UQmZ+Pd/P5GmWQcHaQVet6oI9v7fC4FdVEUcJFD0fQRCB2r+Zgz
	 jfoFFBtcWk9KcELIsQqJKx5tPg7xN+gtoeJ3+JfWPmWMqYVKa96vyXYez/SzSWJati
	 qX7VdadoVRxtApSPgteL3jdVCBonZj5bt5HbmLTT6comqNCznJiOEoRUs39E3ofKAh
	 jqVCet5aLCLL+01jb+KiSqYsZABBld+x7KzrWzOC1i1DkH21e9L8t6GaiHFR0LIEdl
	 7FCPFw6MHR71w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3311CD5BC5
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172554275366.7492.16343636396323511296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b564ee00642f9ddbfc36472bd128e58813c27f5645f5b64aa5c09c4578ed65b
Date: Thu, 05 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725542753
