Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195383A63F7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773065694; cv=none; b=p6fC8LhRdwMs4fcbnqy58brpTVOWojVWDzgYy0OgTW0Yq1SA3Y0jBJd17bUxOMdkStit/Z+nbaxkXV7fBeBV3g9Hai7kH7EzqRTQcRSBC2mgBPlR0/mZGXlFDcgOdVtcfKbp+1ReBtpxws2ogG+xCY7LJ+HypFAGdnJBYK9/3hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773065694; c=relaxed/simple;
	bh=5VXmrZN+YJIMNQJvuY8nOJ0F1u7/TCEBjQKjMvY3LV0=;
	h=To:Subject:From:Message-Id:Date; b=JV5cllA7xCRuSwz/ljlaXUUCoi9FKDZIrvtp7fJU4m4zLpvowoex0UztuYPU0XfqYqjKhJRRrV2+kUeMOSFpluXz9SjVqSk4TLpyGsCp15sJ8xyYggW5DpZF+Qb2HtLtppf/SgGyF855hQ5FYv2FqX53Zf6mqAhO8bnuN4V4n8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOhbkrgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOhbkrgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7D4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773065693;
	bh=5VXmrZN+YJIMNQJvuY8nOJ0F1u7/TCEBjQKjMvY3LV0=;
	h=To:Subject:From:Date:From;
	b=jOhbkrgYt7kSXDIHa0R7QVEVmk3xgozrbwX56GXYp1yDABuycMv3Y05q0/opXPalU
	 EIfRnmnsnjI2+uhrzoyzaomjy2jKBIhPDD6th+L47UMlmtuQWdCz6DyqoZTszQbRSW
	 EcRERrQ9Kr44XQnlJMUTrHIJhMrH5FCWF+pV1HM+5NN0WGHDgGdCYVfkLNOc8pfRoR
	 PkluhvH74xqR5kYrYJ+9gbWwbxDBCgRFkU+qA0bHaD3MK4AlycX0GuGYsU4Tk2dg6N
	 67ynurnP1Wh2JpyzbiIyP9Gm1JxpW1ZS8gm7BYTWnCZlA5unzJbxQ2sTWGQpYznmA/
	 wjJx4J5Ozt2LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C3F3C269
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306569357.21155.2115881723284528381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9283e834db6063bccbbae8f660f66bfa777d39e9556b45af30cb466ea956ce
Date: Mon, 09 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773065693
