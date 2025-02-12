Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB4820459F
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739401734; cv=none; b=N5VAevpg3Y4IJi8gAr12K7OydajYrrPzHkdMOPP1YPxTwDTKsIJs+vHAW2+cYLExzB37xZSq33XqimaQX3viOgnZBOolCTzs7oNzoWC9RlRYC9NucTmCnTSM3OrHNdSaoYH7KRVSVcqhOA08ZhjePtd/JxkcVxU85rbHBs/iNv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739401734; c=relaxed/simple;
	bh=eaALOXdJ+M3WRyZDH06CRsFRMfaOAqQ7xQvlnHee76o=;
	h=To:Subject:From:Message-Id:Date; b=bs+3lOqF0MyDxjpDRvx5F9tQTIEZvgFoHo2bceJ70pBahp2I/r/8eKEn4BpUZBiwjn/NkywEIAhEpxApHV0ScuyVYlVBCoGr/KjRsKNWPnXNIzh/izeHbUHjO0Af/6NgUckk4AiBQ+MV9Wwg5DAitv5wBQqkVB6UbQvGLzKchXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mi23YWaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mi23YWaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D039AC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739401733;
	bh=eaALOXdJ+M3WRyZDH06CRsFRMfaOAqQ7xQvlnHee76o=;
	h=To:Subject:From:Date:From;
	b=mi23YWafnpdc5p5VzHm9c6vqyIL/69rH+DfbIRfl6geN3dcsGLYjBLK63ZIfrldZt
	 JHE41dYc8O+QzcYd0QFh9sEQjU4yT4vhD2Yr20UlGl1A1Gd9Sh98Tz68UG2FDg9q5h
	 cnuKKreRZCpKAzI0v4Lri+ya7lYH8hU47rMf4tGz4poJPgLXjf6jiqv+x/UKw6z9OU
	 YIDV9nx9hufARUQGH687qq4P2oP/65mjqs59ph9BKCxUejOS7iOmvvH7qhYpnf0tUZ
	 PmgQFcJRRCAwwKjjgbd0Qc9mFQk6eT+0KBKoYg8TgQi2QnniKr3mCClIiuVoosczLm
	 ZzDbzzBhBNcow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF59DC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173940173375.615.9860814228610542396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0981fb3037032948ed9f854bf044333167d0272dc9501f970958492b1f82df4a
Date: Wed, 12 Feb 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739401733
