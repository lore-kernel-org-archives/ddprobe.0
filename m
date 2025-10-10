Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B0D1F4C99
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760087994; cv=none; b=ro3+KKXISujo95jP/l76oLX6Mask7z14ZiaFl/4JkpGUZ3RkwyKkZNGt6tn2PYKdO8xdtFKkb24Is4UsSqP3ZK78iEbMAsZ0XXmKs5mVX0EzGEY3VbSgXq2OZvScjk5fnR6ixwzxfp5BrJ1a9+XcL7oASzI2dxiUU21vrU/Fef8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760087994; c=relaxed/simple;
	bh=IskbNqXhi0cGN7CmtaGjyTMcXQAmDIZhs02hHOmpG2Q=;
	h=To:Subject:From:Message-Id:Date; b=fhcLfpYxyF6fHYQt7C9e8Ooh9IyNTkeuSkpDdy+UZ6cPnM5CpXyCWUKU8CrHBeTgmKa3BdUNcVXL7QjbBqtzF8Fn8m9z99uXOI3vBAcis/PsE+rabVI+FDf+G8pip+Mc40KIQS6yiZEcoFP1R2q/9+DrXWL9nVTBxbvg3vQm9WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0+PUhiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0+PUhiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA43BC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760087993;
	bh=IskbNqXhi0cGN7CmtaGjyTMcXQAmDIZhs02hHOmpG2Q=;
	h=To:Subject:From:Date:From;
	b=U0+PUhiS6r05WxEeOlJkDDlGLlbDAoLWOhtT096QasxV3Lj6giUCu0xLcQ2uVSz51
	 fPLbGVecUPNTGAl/XJOJBkbN+wQAAKMqlV8FUwHt9XowvaNRnqmpCo5DKJgonEQ41z
	 aKLv6oM7ab0EXa112kEsOesRZdDASvDVrwlsAZyjVIKQwb6/y3ugdzl1R+MIf0Gq0O
	 fdBvQmyWX4d5uSJrMSyUUndIGKH/+oAq1seMNAC9wumUtVzpYYNN42coHo8WqaLbY7
	 ozDkGb371VJZwrvD9ehju25jBZ7trzKFkDMdmnXkFfDSBRTox//x5UT6LVoONAeQD7
	 2/RrCI9hK+2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91781CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008799358.17075.12315816047497892408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee93f7700674a35e9c96fd7e0e7337138db51e81cd2441298279e7f262d8322
Date: Fri, 10 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760087993
