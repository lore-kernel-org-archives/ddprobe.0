Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DA83C343C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919494; cv=none; b=ZaZ9ZSSzgC0vvVV6w6PLHC9KqdfpprW9bxJ26gHButEfuvflnJDObe1M+AZKpFFhFf0O2OogaZkOW4dtpj3FDEyJ7A/ohLSFbj8eVLP9lFrTa6TLhcgX+YiSRTYa2Knnrlp+WkDqu45T9+sFcSJgmrOTBxFFI3u+ODnnc3Hy1G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919494; c=relaxed/simple;
	bh=1xKqgASf/umVtUazGLB9G1p1QRuDtT2iihOHf747638=;
	h=To:Subject:From:Message-Id:Date; b=YyWcGcCNcYBK4c8HvCUqw83UoJb7JjWltq0vMotWow/pv2FWnkY1THk4Yst9oa9TLU7BCQ2C732zla2BBvrt3rzJ16pmZqxzlH4mJeACgyf12TFJhWSWf6nj1HaodKlEfq4ykygE3ZCmP5GzM+PABWgoU/18BNWcM4aqgg8plGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4fV/lwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4fV/lwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD74C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773919493;
	bh=1xKqgASf/umVtUazGLB9G1p1QRuDtT2iihOHf747638=;
	h=To:Subject:From:Date:From;
	b=I4fV/lwUr7zkO17VnMyBS4LYjm+EY2UpSdaIR1kploMpE7DTmumt8Qua84Etpa4gJ
	 5pRiKbwcC5zXz8PK/N8elXRp4lNj2k+kBmFCLh39wVuYuKWTBX86ZfH+3Myip4yJB/
	 4PmJMpbLFwjYuP42IbPFzKFqt3+4j9Le0b7o4cX8oSgWvatewzsZ1KUTGkbsXbK6Wq
	 TLDdAhPzJQkJ3dlLKe2qrzVWAXyuYPn5y7d6JDkwzmAjUsJzawFGcFmvev1stIHqmt
	 aXo/WP+mWudcpOTdKVP/a0R8ZfLMWQ+WoXASoAi0XjMYUeddLHpdvCImEBWychhWDu
	 p1I/04S6frCpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087E108E1EE
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391949358.12589.3831966670365483735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec03374b89e9f7244d8a501ee0c8d9f775fe3086cde4317e408df9e35d9f52b1
Date: Thu, 19 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773919493
