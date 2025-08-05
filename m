Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB76B1D7E5B
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754394594; cv=none; b=T66GHWHhLZ/nYhPKWQpCKwHneIodgPrhrgAezRvS/VeMunXtn3cqiOvKFD9lM1Xx1+QZqVfX/kCHdwPFJBpTwNnae0DZPr2q4byRMgwEjAKfejcLa8xF62/fSgJQA8ZvYaQb6dDWCmagKLoRbDV19JpF1lVFaDxxTc/kpWX6Bio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754394594; c=relaxed/simple;
	bh=iah+tV/2+Gtj6ZpYxCjF/C+t2U02xVrm4OeWdKg1if4=;
	h=To:Subject:From:Message-Id:Date; b=c4ourFHMqtMvsl5z9ctyFOMl/jg8m06TbRE4tkba3p9P3Arzq5BDUzL90pOf7berYx+9cXUXNJ6pW+IhHCtT67awTeBthdjWcQvws2/DX5FN9xGCTMKjEbtpCuAdn58XYsE5ZJKcQ9Szrnix6D957BlODkbaWvEdVBZuolFFhtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoG6A+jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoG6A+jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE349C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754394593;
	bh=iah+tV/2+Gtj6ZpYxCjF/C+t2U02xVrm4OeWdKg1if4=;
	h=To:Subject:From:Date:From;
	b=GoG6A+jl1iv7PEA6vd25uXEv/1cEoipw4RzorPvz7d0bH0MNbjDdfwVFdamkiO/kb
	 z6sBw7A4UiqgxNE6IcxX3+vP6V4n5qlYo8CTODesZ9L4J+dCkPyamcnjOu4X9HW7f4
	 30nDFY/O41qdj/FlWRq4e6U48SpXvZIZSFUDiJQ06JT+bYm8Sqe3UK+IDrepFYtSxs
	 SUZBRLA2bSUuhJovEaLWif3LnDBICzAZP/zKo8YqhBTqL0jyR3U7WUulBt/DMwtZ+u
	 QoKqYU5UCtcDUGCyLFcj0NOhmkURhpt2RzoOqpxXKy210ekMd5VlzjmySFROPTqupS
	 UTw3tTQSAwa3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB66C87FD2
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439459362.11835.1013994981695373270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19399f984a3a2ef7669f7535ec7246ec00b29a9d88a90968bcc9a7cefb9c4bd9
Date: Tue, 05 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754394593
