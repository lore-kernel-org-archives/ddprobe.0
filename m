Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20801189912
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734278754; cv=none; b=ncl7SSRGDv1e7ME2I2y8qu9bdbhSlPxMk37ikPnd+EtR8BbsCKfCX5oLwocZq0Cs5BhHlgbWp+1KTtAfOheBkTyfNBvvYumjwzBsMFybJwwWX0WxNgQz+9VWnqPnaENmN8hr52hRpsPw8olDU1y7nF7xSJKHAFs56uGjAdWg01g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734278754; c=relaxed/simple;
	bh=KFRj2G7W2MgBCfIS++lL3mivPt2iGejUqTOoB1YkKbQ=;
	h=To:Subject:From:Message-Id:Date; b=jgiDRi0SG4Lxf0ndcqibY/Fz5dIpJJjtpFfoVnmOBSS7jpK4iLbaXofdQwBRLy4Bz6G/IEbg/uLoJssP+fKHFwYv2YiUSeh4y16sHcWpYLnk1eIX6DYmQBlIPFeY0XXmGgs0gzY92B75zW/t3rQUk9kJQILkFr4k1R69hjs3xDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0Ti279T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0Ti279T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C0C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734278753;
	bh=KFRj2G7W2MgBCfIS++lL3mivPt2iGejUqTOoB1YkKbQ=;
	h=To:Subject:From:Date:From;
	b=F0Ti279T5+kamh8yrgQUcVIw1wsMVVXrGeEv8owKrAzm13fPWFul4s7Nr/yIfQ+yE
	 DiZRlVFTgTokXhi9wCo1qDM/XkUa4PKKxDpOzMOLvB3FFY8x+U7jbrOgBEHl56ysyd
	 Sv0Aq7kvY3dOq1LgmsZWmbNKKhykai010bJt0oM0ZuWUhVqPZNazcB1kOdGGcUAr/7
	 LiU/Lds9fv3MgMnot8UmJAoXf+m5BWHUUjBDFZzlTVgNnA6XcsYT5A9XDgMEQprMVE
	 Gq3gN3FMQ3YgPT21WTx3h5iDK26Q5P4W4JD87bk8m3+j9HihfsWjWW6UxYwt5n3SfW
	 5f2hsz237yvgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943C1E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173427875359.3286.7713159682867455038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d337f743c0e2881476b890a94642f1925558de898c401b9fdcdc241756bdf264
Date: Sun, 15 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734278753
