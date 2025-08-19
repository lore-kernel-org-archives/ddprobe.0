Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9C7202F93
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755613195; cv=none; b=rxhNIMxWPF1BBmihK6fsuJhsUzomAwEkrjP4kU79drXKF8ZPNK6IdQUtA0xKXMbG4qA2zf/Aqwuc65oE7e0STn4KqClPVzw0vvts2EBzWQwMqqN0euFsNcRWvwIv9rZW0l0SZMcCxk47TR8VSrayzANiTjL1I1Mt54McGfiRVxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755613195; c=relaxed/simple;
	bh=MyB3UYPqwEplG5XV9HHEtqvgmA3Ne0UtjzG6kmGrWH4=;
	h=To:Subject:From:Message-Id:Date; b=IMGohZrzG64lj4aStZIIYjAP8u/uRhyRip9b5KbxdFzVZX4Jq1j4XmqOdt+rnwXvG1COFa6GoWyPOPpLzJyULG4BbbQ0PAXOD0YR49ov00YSTWPKHF+oE0mtzJ2FiBSJ6n2aQHrgQyUpSXy0N0UK+dItDfOJY5uL//zcmaJw9Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khyow6dV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khyow6dV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFF5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755613193;
	bh=MyB3UYPqwEplG5XV9HHEtqvgmA3Ne0UtjzG6kmGrWH4=;
	h=To:Subject:From:Date:From;
	b=khyow6dVWMZmfkTny5T/XrC8mpFeNaJA3eRBOPkybHReLAhih7e8K7F4Y7Kosu0bV
	 6XV/al2vuJ341sE3b17OL5NjNyRRrIHll4HB/w21agBRoifQ28ZCM8paSdIiBtKkZw
	 rE9hv5NIsC87+sWB2hHEatWDg7Bl7yWWcDeqpgPwRAOkKAb6iEpqyL66AvN0Wz/WeV
	 E5MUEHbAdXqi0Dtsfy/YK3CFZ+w8iVwi1psw1bXwAc7KK6OIPhyjyZ/AgS4S8O83k3
	 D0ahwzNYJyXsoaMKqeLcAj+MhJ9MOswu7G//5A7j48LBOrNV/m76/yhZ1Er+TMlKsD
	 vShrfHXYI4oRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE8CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561319357.32344.13666614385041498248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8a190664d8ea3c13fb25d6545c0ab9d6308eba86599d144ef0eb6a65c10151
Date: Tue, 19 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755613193
