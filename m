Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D24A1EB182
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741682934; cv=none; b=VLsGiMzg5tfAx2vmxo3v9vOe3fRZS0rqDEUVowKiuylsOqGKngGcSstnqG/vyKVq547foTSvkt/yr7sqJmH5EMPtWK6t1q6zBUNBbb/QA5YsAFhHJlla8tjXrDMSCu4yBuIQS7fjSFD27zKwkbUbrgWKtF31kKWaZc7eBASJX3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741682934; c=relaxed/simple;
	bh=6SqyzZXj0yfO3LJRtFSXrP6FKHfyw1OwTHVlpgB4Xrg=;
	h=To:Subject:From:Message-Id:Date; b=nfr4lXHCwlMLWc5lZzn/VOvtqERddcTaEMZMVsrL3t2qiKg7V2Kh0YJ75s4CefxgimKn8ZlqqHjhe5RCOH56OvwcZ35lhYZnZkoQhqICLPmO6YCnvmmcApTFc3FNgX4BaDnHlwFwk8vQ3j/75cHMAw2FXfWQNVjfj8h0aVqPfUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6QCv6T+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6QCv6T+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A975BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741682933;
	bh=6SqyzZXj0yfO3LJRtFSXrP6FKHfyw1OwTHVlpgB4Xrg=;
	h=To:Subject:From:Date:From;
	b=B6QCv6T+UWwihY7MLHgkvuY5i1JWIggzFDlPyle+WZukwrVTelIyCIpl45R6Q2lg5
	 me3I+TzGnQSrW1xmrVV+mcXjiD8+bRaCdbb447AK6PNjFlRyIta2ChAD8pzGonX0LL
	 X6U/kJ1uh3OL5YSY7xxPvWFFFfys1/s6nC4iKaNN4XVZzdV/6Hg8ZUhnqOOqCft3QJ
	 XqbfBv9Lhx8wn1QtEq/WRhRanx0j96F3qvo8utpvLzaYh75NNYiBR+sDsVMLPdm8O+
	 dqXjKhiK+jklQUxSV3YHZsVDu7sA4KK5QXktPk/BzMnq1ZWcU9tzwxa+jkbsbngOth
	 3Fcio5bl/zrNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91430C28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168293358.16443.17619515264624746077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafd18efdd5fbb72dcf534bf46c4c44b7ee6a32d3cc3897a5b3b4ad628006ec9
Date: Tue, 11 Mar 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741682933
