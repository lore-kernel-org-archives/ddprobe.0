Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396B314A8E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767482034; cv=none; b=Bw+VKyUlrpuoshRlmsyO2g7v0NhyPLC6TraPwYp54RmGp2DN1xQoA1TjdOQ47umdQJrUzwfgLXPvUXEJ356vtiN74zvPBcPD3xNfG1eRf5eKs5fec6agyffM1PgzQdSJ/X3e6ln7mBorvsdZGzD/8xnhP9aSOIeqm6Cwbxg5KsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767482034; c=relaxed/simple;
	bh=7V0H9Z6kCz7jw9mPhbkb7Z7lUu5y5u/nu4pSaHsul+c=;
	h=To:Subject:From:Message-Id:Date; b=PXCHjb9BLoFNAGWRLlggjbfDGi0ZkCIHpseG8ZXpBXo+rkysCtV0QqcfzAAU2g0swV+k1RHrmgZyyA6DsmrGVwSM0GK5s3mYJ6OQbBxrrG734RB3r3zGlzMjTRomnbLnFPjPe0QP/V5iX01q2dcTCcMT5M/1Bk0WJi1rnYJlVM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePVg6Eld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePVg6Eld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B00C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767482033;
	bh=7V0H9Z6kCz7jw9mPhbkb7Z7lUu5y5u/nu4pSaHsul+c=;
	h=To:Subject:From:Date:From;
	b=ePVg6EldRnqCGXwknrJgDsQF1ao+XjJGhovRvWc6IrgHqUEHW+TpVlXb7bEBHfPdG
	 8cD7AaIQwg6acAUMjHN/EXc6GVW91VrT1jGiNlNPbfQofvJbIHRwMlNXc6DrZyaSb5
	 qrcJGHBPbmCJWRogmkDVC8mYgdPkPkI+ShUkKvEyqSK7riSQ1xmsKRnUan8E4hae4X
	 8/e7d6rFxQ/7K+KysGsY7p6r18kfwR29tOwSWvKvOkY9AUjnttCvSIcX4GaK9m9pUs
	 fkWOdGuITCmsLbKvh9326lUiM9TI7jAkGjKrRQdyzACe5MmJUDUMHWZpFHRKtWwwJD
	 wC3Klt0bIR+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92088C2A061
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748203357.26762.854884107930802812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc697d7c86b2b8bb465fb16ec43921a31e35929a0c429303240c673c39c9978
Date: Sat, 03 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767482033
