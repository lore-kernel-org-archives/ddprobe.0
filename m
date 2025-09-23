Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC1B1A9F90
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758659394; cv=none; b=pOxImb6BeYeIUQswdCqgj0AvoR35StnqFUvfC0vABMWC7KmP6a51Jv0p/hdnj+zb8E4Ckd7pd+2q7MvAmFa8Y2YOe2cNtUd6yf+g8LEeXqWkT6QW0C+6Ufp9CD9IB0rw1xzBphhewsxvioL4AnmyjMz/9iCCYEReDm+7+3BgDhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758659394; c=relaxed/simple;
	bh=xIMwODjF9siY5kS+mxj+cu16KZtjLXU+lguDtCGuhzQ=;
	h=To:Subject:From:Message-Id:Date; b=YGXFuvN7lzSOSOFUd2ApEmJnwfGW1AnbrBJ/VJj2z/9udFPXnum3F4db0q9Hh1X0OkkpvjsCkoqiD37iFofYsthQcdx7QASFM2OJpe1vfdMaFpulbvre3u3vzRf5Q6B+tk15zQvqeXLq6AwxhII6h+IOlZgAFiJ0zLXUuW0Qzf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iX45eqlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX45eqlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB61FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758659393;
	bh=xIMwODjF9siY5kS+mxj+cu16KZtjLXU+lguDtCGuhzQ=;
	h=To:Subject:From:Date:From;
	b=iX45eqlzluexJY9SPTzjloaXK3xGxIpdVGRluD7mdlkNoq9vkZkX8bFlmaaiZLl3k
	 3++2ToF25QfU34LTD0MGgc5V65uh5Z+qT3w3TZYRpORXbDQpdCsj/0JMj41qP/nhCq
	 4UEQs9rDLcTE/rE0G+fAfxcaPu3CI7NfWfgR2tpkGHyek2TVcHP1lsH0th5iP9OqaR
	 OEW3A5PXT+7cvWRh2WoG2cUi7DTw4z4TRSAAoaUJBYIlhG9nfshcvQzRG363Oz08EN
	 Xr5g0PSnN2qDVjhoCbN6s9DQA/KEFheGcbAo5dzKGeC+7l5bh8ox3audSRoiHZig3p
	 p+lH+wJEJqM0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97496CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865939357.11591.711029572255769464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44f8bd4b818a8cace81c3c7e89e27d12710517857c137361cc983da64ff8326
Date: Tue, 23 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758659393
