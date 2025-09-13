Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F85929D0E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757723395; cv=none; b=Lsg52WUmnHxHk+Qo3F7jj445leuEx278oMbMdSL4eQzXIgO0LuYuoux3BZ1jW/Rz21KUSd4eJ8BIRbLdFV0mhf+8nYZXNkYOpl9K8oHsdiToCDaXcOljnl1m4ncnCSp1RugP1YQEksloTy7pADQRmGuY5UDKsPdtXPCKef0DfF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757723395; c=relaxed/simple;
	bh=rixLVTVP6RqQcWBMsCzVrwTNzSEVXNR6leVnLE+9Ovw=;
	h=To:Subject:From:Message-Id:Date; b=b9dy2iqCxRn0pziVVKHn4v57xls1nJ57IjfPtG0WyfQMZC1v8fH/jJgFzRxKiqIAw0Mzu+AYdS6EC1jQtg+35TnzR7rgc4q4GIn3gz/ltnVM3+NFdwhT5jMSYsF+N/aMyx+q0nYuskSH2DoF0N2YH40WbJ+p/qJ89uMqEXszV9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3uEujju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3uEujju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2095C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757723393;
	bh=rixLVTVP6RqQcWBMsCzVrwTNzSEVXNR6leVnLE+9Ovw=;
	h=To:Subject:From:Date:From;
	b=c3uEujju519nMqkMTELjnCyT151m4pYCdAE49t8530U6i8Qs1ujfUDd1H+xuXzQi1
	 jqB3hq0Vj6iZOWKnni8K7TQRAcVb5u/zMn0Cc9exquNC2POx+HivHlQuprvV1RNalS
	 JIqPSRljssyIf9YzzoZdlfUMEEVc0yxkamExIkg2xQTK1OXf+kZAeVOCOIgEFBrLU0
	 KNpAV/xtOLNw/A3IGX5C7MYqvqjLbnkWKZuAoBEh5VIceIInHV+CCAOA6lJlHTMSE8
	 I7vnRL+U2/a7QXFB6TFZpVFW4LbT2tA9WeFsaWbveO6WmRsmRucyQ0BoU9AlJIY1b1
	 21dTRJC400owA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F884CA101F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772339358.21012.8398003564437133132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62cb6713d37102d613ead0f5c74a72f804b2162fa1b951e49bbb96405d93d0d
Date: Sat, 13 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757723393
