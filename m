Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D6A23D2BB
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746287994; cv=none; b=TmpDLrNeN4EGsYmDtHrFq6pMWjxxeWeMSzvjLYGcnVwWPoH1L5zUTpVwBM4mZ6VR6Jalom/q1lYN2AHrEzJ5fSk59LZeRN/RKKtVZG6skiuxN4hgKlQlFRYtCHlvxIDNxoWwDCsuHWbLt/qmBVRYX2a1YLB+KwC6eEOD0AKzs6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746287994; c=relaxed/simple;
	bh=fol7orHWHFyJS+D+aDQxFqfUAdmR4CECPzoRhRTAkCU=;
	h=To:Subject:From:Message-Id:Date; b=BOjMUpXxFz1FMsjYF201nM+PHFKuQpc5VoDPREQ6wXbfrTtC4GWiP/zrkxmFRIuMSyxTcA9R2iGKD41GYngi1H/zcIChNLIO0y8SoW4LPsSD2louODFms75yUOgUo+n3U7w0+EKM9TmIBhJJQ+KaoAi8MtV0Gj2kfvQbp+C0Z+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf523bYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf523bYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAACC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746287993;
	bh=fol7orHWHFyJS+D+aDQxFqfUAdmR4CECPzoRhRTAkCU=;
	h=To:Subject:From:Date:From;
	b=sf523bYHcoQgCrjchjHO/zQ6sLejcS7FsGUmMy5ipOMkflyaqi+DvHbp+tJkWOEPS
	 SqSOxAYv5FMwZFZVKkGXH9svRM4Sws5sWkD2a+FKaVAqXMPkitfdrK+atANtcejA20
	 wjiV/2ktLWquAT8tJhqEf1sH2RBpNFrxg+/qvT9DsMowsMcAqXqdSmw24at4rWXj1f
	 YySfB8WmVHFMg+iLDW/aHX0unBCHprmYPoUHx3yJ4xjrj8Ow+ch499Ya3YOHuGyv0S
	 4nZa963mqaN5pJdTota6UaFC8P81eWIKvZFs0HbSFeQoiBfGQ3H7RulJef6s6ds5cb
	 2DLFA7xG+JoCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E09FC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628799357.19132.5728928182312821101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2e8eb931fabe8d4b1299f53051d28505ce1e566520609512c2eca4ab1ba7ec
Date: Sat, 03 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746287993
