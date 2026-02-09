Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0639012B94
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770596034; cv=none; b=SCoSIrLnhJkTaDP5UzL6yYe82j2OjBz0smX1FKha33HWQaIgvaJrlw5FK+dwjZhQp10MW6JOYIZN5ZtA4Q5EpwFUuol06kq+R36m0Ca6UBcXU1d07nd2N5bT+trGnek9YRkZ0iRJ7xixA+wLK+jlzwPw2+I/Zsiqwx/OrokzpmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770596034; c=relaxed/simple;
	bh=n4rZ4Ay8DjOGE2JUb3X5VYkL6igtpjiSzvTmafFfj10=;
	h=To:Subject:From:Message-Id:Date; b=DpsJcn3Bchd+gnFfs8/JLzxVj3a3ixuTgxZfltbxt3WTylv35PEnKc8mD9EIsvs9v1ZVTQ4OJL2a9cuA9ScqBi4+gfXbIFaM9j/i73MWUKJw6xG/rgoyWq0kXr8ayTrv5dRfSFpK5pNvhMGBB03Hz83NorPpS+4f9WQ+chZLKRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMM0wowV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMM0wowV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770596033;
	bh=n4rZ4Ay8DjOGE2JUb3X5VYkL6igtpjiSzvTmafFfj10=;
	h=To:Subject:From:Date:From;
	b=VMM0wowVceeuSwrrRB6107jF4vOQ4U5CBgMojZjWNVEL3gKHTl20x5U8sQU2+fjDT
	 vuuFjEHJEN/Ac8CPcdgY2zHE47yH92D5ZJBbodG8KPi8mmDrAAc97cl4o/niMuY5GI
	 uNZz7Y9R/l/scAR12d6bY2pllvVxjphNjSeEoYQxvQBBwHe2TeYafUj96d+e6Ra5aW
	 Pazp16NZVMjKV0bsDSAlls6fs6qzsvDw6xJtl9Bgh3xfHH7TDp3gibpkh2ZgjHEh8k
	 V986aasC0uLN3Sc1PLlRqgTXft4LduvCWPG08q4rIQXe5EyCVXUevn1kjgeWh730TR
	 49QtgB2BUnGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A1EF06FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059603358.27112.7380319524293519748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6412060a4e487b1e249b9ea6096f631b6adb1d5509e3567c6631ad7e355fa88f
Date: Mon, 09 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770596033
