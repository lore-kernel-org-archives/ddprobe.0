Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE5319D89A
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718430503; cv=none; b=aa1HYwHVpqxecWq5/VaF5Xb44UGkn1ozhfOR/7DE7KgfohgO5UZWPD+yEDwoF71Bqq3mqmNt9NUyaMuoENJ/HVcmYnS9iYqNb9g2PnXqsJqsURc5eOqd90LSpUepphx/dNUZGOXk5zyJo5pCiqG7QbwMuxUo6+G1lp4B/BldTfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718430503; c=relaxed/simple;
	bh=olRg68b3OtdurlXQ2HU22M1RhjEMzD7nsTz6fBycutQ=;
	h=To:Subject:From:Message-Id:Date; b=YUl2xdrQf9G24nQanooRFqUjf7+Bs7IDXR7PYYeIdofhuS+pYr4z4nM1XLYgSHKQitnuf6mgY+sUAT+y79ZmFVohURdPRgy5+qecL1sbimPVQps9amRXcPxIJz1qt4a4EuVjH358IRpiPD5kju/7nZF+dH59zC5xKgG5wIubZyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibzZsxNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibzZsxNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DF8C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718430502;
	bh=olRg68b3OtdurlXQ2HU22M1RhjEMzD7nsTz6fBycutQ=;
	h=To:Subject:From:Date:From;
	b=ibzZsxNKkm8kAUKeHLqMJLkTh31o8fwFCqfYuDoax+EQZa7ZPSuqMZvSw7jW0jvJ4
	 ufUuDd1L/iKWY9AcNmpilD+Hdu6CkwDTqeXwqOUIyWqbPEvNaALjXhrs4QoTPiRn6B
	 KJHmyXJmeMTaFxmZbqFVM08L4m9FfE/yAKZy+Y8x0AGsGaoLeZXCOrY9ANGKt5kA0q
	 IBUOMLsnrkVhyheFxRStTO5N918KW9Q1Yw6u7QyhzBA/WjVKTfHmcHayVFVvJI7Kf7
	 0NlhEuQkL2qQecL/IRxrTa1jNwOo4Wk6opPUf2iJBB8OBeJamnj8Mc+OcIxwjozOxl
	 dFaGeqUT99Drg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD74C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843050281.4830.6631182444293417655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0364245823a733019bcb26bc6783ea9a1a8d06547d70ffc2477ceaf2090017f
Date: Sat, 15 Jun 2024 05:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718430502
